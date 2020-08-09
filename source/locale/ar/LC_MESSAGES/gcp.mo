��                        �  N   �  	  <  9   F  	   �  u   �                !  |   7  �  �  	   R  j   \  �   �  B   Y  �   �  M   s  .  �  n   �	  %   _
  �   �
  m     �   �     1  >   A  ;   �  a   �  0     �  O    �  Y   �  9  V  a   �  
   �  �   �     �     �  $   �  �   �  /  �  	   �  �   �  �   �  Y   �      T   7  Z  �  �   �     �  �   �  �   `  �   �     �  d   �  ;   K  �   �  0      +  9    Create a CSV file that includes the gcp name, northing, easting and elevation. Create a GCP list that only includes gcp name (this is the label that will be seen in the GCP interface), x, y, and z, with a header with a proj4 string of your GCPs (make sure they are in a planar coordinate system, such as UTM. It should look something like this: Elevation values can be set to "NaN" to indicate no value Example:: For good results your file should have a minimum of 15 lines after the header (5 points with 3 images to each point). GCP Editor Pro GCP file format:: Ground Control Points Ground control points are useful for correcting distortions in the data and referencing the data to know coordinate systems. If you supply a GCP file called ``gcp_list.txt`` then ODM will automatically detect it. If it has another name you can specify using ``--gcp <path>``. If you have a gcp file and want to do georeferencing with exif instead, then you can specify ``--use-exif``. If you have high precision GPS measurements in your images (RTK) and want to use that information along with a gcp file, you can specify ``--force-gps``. POSM GCPi Sharp corners are good picks for GCPs. You should also place/find the GCPs evenly around your survey area. Subsequent lines are the X, Y & Z coordinates, your associated pixels, the image filename and optional extra fields, separated by tabs or spaces: The 7th column (optional) typically contains the label of the GCP. The POSM GCPi is loaded by default on WebODM. An example is available at `the WebODM Demo <http://demo.webodm.org/plugins/posm-gcpi/>`_. To use this with known ground control XYZ values, one would do the following: The ``gcp_list.txt`` file must be created in the base of your project folder. The first line should contain the name of the projection used for the geo coordinates. This can be specified either as a PROJ string (e.g. ``+proj=utm +zone=10 +ellps=WGS84 +datum=WGS84 +units=m +no_defs``), EPSG code (e.g. ``EPSG:4326``) or as a ``WGS84 UTM <zone>[N|S]`` value (eg. ``WGS84 UTM 16N``) The following screen will display a map from where to select the GCPs to tag and import the respective images. The format of the GCP file is simple. Then import the CSV from the main screen and type ``+proj=utm +zone=37 +south +ellps=WGS84 +datum=WGS84 +units=m +no_defs`` in the ``EPSG/PROJ`` box. Then one can load this GCP list into the interface, load the images, and place each of the GCPs in the image. This app needs to be installed separately or can be loaded as a WebODM plugin from `https://github.com/uav4geo/GCPEditorPro <https://github.com/uav4geo/GCPEditorPro>`_ User Interfaces You can use one of two user interfaces for creating GCP files: `GCP Editor Pro <https://github.com/uav4geo/GCPEditorPro>`_ `Help edit these docs! <https://github.com/OpenDroneMap/docs/blob/publish/source/tutorials.rst>`_ `POSM GCPi <https://github.com/posm/posm-gcpi>`_ `This post has some information about placing Ground Control Targets before a flight <http://diydrones.com/profiles/blogs/ground-control-points-gcps-for-aerial-photography>`_, but if you already have images, you can find your own points in the images post facto. It's important that you find high-contrast objects that are found in **at least** 3 photos, and that you find a minimum of 5 objects. Project-Id-Version: OpenDroneMap 0.9.10
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2020-07-21 17:01-0400
PO-Revision-Date: 2020-07-21 21:10+0000
Last-Translator: Khadija Abdulla <khastylez@gmail.com>, 2020
Language: ar
Language-Team: Arabic (https://www.transifex.com/americanredcross/teams/111882/ar/)
Plural-Forms: nplurals=6; plural=n==0 ? 0 : n==1 ? 1 : n==2 ? 2 : n%100>=3 && n%100<=10 ? 3 : n%100>=11 && n%100<=99 ? 4 : 5
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.5.3
 أنشئ ملف CSV يتضمن اسم gcp والشمال والشرق والارتفاع. إنشاء قائمة GCP تتضمن فقط اسم gcp (هذا هو الملصق الذي سيظهر في واجهة GCP) و x و y و z ، مع رأس بسلسلة proj4 من GCP (تأكد من وجودها في إحداثيات مستوية النظام ، مثل UTM. يجب أن يبدو شيء مثل هذا: مكن ضبط قيم الارتفاع على "NaN" للإشارة إلى عدم وجود قيمة مثال:: للحصول على نتائج جيدة ، يجب أن يحتوي ملفك على 15 سطرًا على الأقل بعد الرأس (5 نقاط مع 3 صور لكل نقطة). GCP Editor Pro تنسيق ملف GCP نقاط التحكم الأرضية نقاط التحكم الأرضية مفيدة لتصحيح التشوهات في البيانات والإشارة إلى البيانات لمعرفة أنظمة الإحداثيات. إذا قمت بتوفير ملف GCP يسمى ``gcp_list.txt`` ثم سيكتشف ODM ذلك تلقائيًا.  إذا كان له اسم آخر يمكنك تحديده باستخدام ``--gcp <path>``. إذا كان لديك ملف gcp وتريد إجراء مرجع جغرافي باستخدام exif بدلاً من ذلك ، فيمكنك تحديد "--use-exif". إذا كانت لديك قياسات GPS عالية الدقة في صورك (RTK) وتريد استخدام هذه المعلومات مع ملف gcp ، يمكنك تحديد "--force-gps". POSM GCPi تعد الزوايا الحادة اختيارات جيدة لـ GCP. يجب عليك أيضًا وضع / العثور على نقاط المراقبة الحرجة بشكل متساوٍ حول منطقة المسح. الخطوط اللاحقة هي إحداثيات X و Y و Z ، وحدات البكسل المرتبطة ، اسم ملف الصورة والحقول الإضافية الاختيارية ، مفصولة بعلامات تبويب أو مسافات: يحتوي العمود السابع (اختياري) يحتوي عادة GCP تسمية. يتم تحميل POSM GCPi بشكل افتراضي على WebODM. يتوفر مثال في `WebODM Demo <http://demo.webodm.org/plugins/posm-gcpi/>`_. استخدام هذا مع قيم XYZ المعروفة للتحكم الأرضي ، يمكن للمرء القيام بما يلي:  يجب إنشاء ملف `` gcp_list.txt '' في قاعدة مجلد المشروع. يجب أن يحتوي السطر الأول على اسم الإسقاط المستخدم للإحداثيات الجغرافية. مكن تحديد ذلك إما كسلسلة PROJ (e.g. ``+proj=utm +zone=10 +ellps=WGS84 +datum=WGS84 +units=m +no_defs``), EPSG code (e.g. ``EPSG:4326``) or as a ``WGS84 UTM 1[N|S]`` value (eg. ``WGS84 UTM 16N``) سيتم عرض الشاشة التالية خريطة من أين تختار GCP وضع علامة على الصور ذات الصلة واستيرادها. تنسيق ملف GCP بسيط م قم باستيراد ملف CSV من الشاشة الرئيسية واكتب `+proj=utm +zone=37 +south +ellps=WGS84 +datum=WGS84 +units=m +no_defs`` in the ``EPSG/PROJ`` صندوق. ثم يمكن للمرء تحميل قائمة GCP هذه في الواجهة ، وتحميل الصور ، ووضع كل من GCP في الصورة. يجب تثبيت هذا التطبيق بشكل منفصل أو يمكن تحميله كبرنامج مساعد WebODM من `https://github.com/uav4geo/GCPEditorPro <https://github.com/uav4geo/GCPEditorPro>`_ واجهات المستخدم يمكنك استخدام واحدة من واجهات المستخدم لإنشاء ملفات GCP: `GCP Editor Pro <https://github.com/uav4geo/GCPEditorPro>`_ `ساعد في تحرير هذه المستندات!  <https://github.com/OpenDroneMap/docs/blob/publish/source/tutorials.rst>`_ `POSM GCPi <https://github.com/posm/posm-gcpi>`_ `تحتوي هذه المشاركة على بعض المعلومات حول وضع أهداف التحكم الأرضي قبل الرحلة <http://diydrones.com/profiles/blogs/ground-control-points-gcps-for-aerial-photography>`_, ولكن إذا كان لديك صور بالفعل ، يمكنك العثور على نقاطك الخاصة في الصور بعد الواقع. من المهم أن تجد كائنات عالية التباين موجودة في ** 3 صور على الأقل ** ، وأن تعثر على 5 كائنات على الأقل. 