	.arch	armv8-a
	.file	"typemaps.arm64-v8a.s"

/* map_module_count: START */
	.section	.rodata.map_module_count,"a",@progbits
	.type	map_module_count, @object
	.p2align	2
	.global	map_module_count
map_module_count:
	.size	map_module_count, 4
	.word	12
/* map_module_count: END */

/* java_type_count: START */
	.section	.rodata.java_type_count,"a",@progbits
	.type	java_type_count, @object
	.p2align	2
	.global	java_type_count
java_type_count:
	.size	java_type_count, 4
	.word	336
/* java_type_count: END */

	.include	"typemaps.shared.inc"
	.include	"typemaps.arm64-v8a-managed.inc"

/* Managed to Java map: START */
	.section	.data.rel.map_modules,"aw",@progbits
	.type	map_modules, @object
	.p2align	3
	.global	map_modules
map_modules:
	/* module_uuid: 4957a41d-8f26-4612-874e-235d435edbc3 */
	.byte	0x1d, 0xa4, 0x57, 0x49, 0x26, 0x8f, 0x12, 0x46, 0x87, 0x4e, 0x23, 0x5d, 0x43, 0x5e, 0xdb, 0xc3
	/* entry_count */
	.word	2
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module0_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: Xamarin.Android.Arch.Lifecycle.ViewModel */
	.xword	.L.map_aname.0
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 63a73926-add2-424e-b535-ff083e671261 */
	.byte	0x26, 0x39, 0xa7, 0x63, 0xd2, 0xad, 0x4e, 0x42, 0xb5, 0x35, 0xff, 0x08, 0x3e, 0x67, 0x12, 0x61
	/* entry_count */
	.word	4
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module1_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: EloAtivador */
	.xword	.L.map_aname.1
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 8604c028-059f-4bcf-8084-8b0d6324fd31 */
	.byte	0x28, 0xc0, 0x04, 0x86, 0x9f, 0x05, 0xcf, 0x4b, 0x80, 0x84, 0x8b, 0x0d, 0x63, 0x24, 0xfd, 0x31
	/* entry_count */
	.word	2
	/* duplicate_count */
	.word	1
	/* map */
	.xword	module2_managed_to_java
	/* duplicate_map */
	.xword	module2_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Arch.Lifecycle.LiveData.Core */
	.xword	.L.map_aname.2
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 930b5537-cb9b-41ca-8447-8e5ec9a0f841 */
	.byte	0x37, 0x55, 0x0b, 0x93, 0x9b, 0xcb, 0xca, 0x41, 0x84, 0x47, 0x8e, 0x5e, 0xc9, 0xa0, 0xf8, 0x41
	/* entry_count */
	.word	1
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module3_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: Xamarin.Android.Support.v7.CardView */
	.xword	.L.map_aname.3
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: eb227d37-19ae-493a-876e-4322e6534858 */
	.byte	0x37, 0x7d, 0x22, 0xeb, 0xae, 0x19, 0x3a, 0x49, 0x87, 0x6e, 0x43, 0x22, 0xe6, 0x53, 0x48, 0x58
	/* entry_count */
	.word	20
	/* duplicate_count */
	.word	2
	/* map */
	.xword	module4_managed_to_java
	/* duplicate_map */
	.xword	module4_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Support.Compat */
	.xword	.L.map_aname.4
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 6ba8025e-51e5-4faa-814f-ba127cda80df */
	.byte	0x5e, 0x02, 0xa8, 0x6b, 0xe5, 0x51, 0xaa, 0x4f, 0x81, 0x4f, 0xba, 0x12, 0x7c, 0xda, 0x80, 0xdf
	/* entry_count */
	.word	5
	/* duplicate_count */
	.word	1
	/* map */
	.xword	module5_managed_to_java
	/* duplicate_map */
	.xword	module5_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Support.Loader */
	.xword	.L.map_aname.5
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: af0c5186-cb1c-499f-a8bf-21b730c28eef */
	.byte	0x86, 0x51, 0x0c, 0xaf, 0x1c, 0xcb, 0x9f, 0x49, 0xa8, 0xbf, 0x21, 0xb7, 0x30, 0xc2, 0x8e, 0xef
	/* entry_count */
	.word	9
	/* duplicate_count */
	.word	3
	/* map */
	.xword	module6_managed_to_java
	/* duplicate_map */
	.xword	module6_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Support.Fragment */
	.xword	.L.map_aname.6
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 3ad3a6a3-2e0a-42ce-88a9-de5bbfc93206 */
	.byte	0xa3, 0xa6, 0xd3, 0x3a, 0x0a, 0x2e, 0xce, 0x42, 0x88, 0xa9, 0xde, 0x5b, 0xbf, 0xc9, 0x32, 0x06
	/* entry_count */
	.word	1
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module7_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: Xamarin.Essentials */
	.xword	.L.map_aname.7
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: c47fbdbe-5fae-4cc8-998e-1018a6760445 */
	.byte	0xbe, 0xbd, 0x7f, 0xc4, 0xae, 0x5f, 0xc8, 0x4c, 0x99, 0x8e, 0x10, 0x18, 0xa6, 0x76, 0x04, 0x45
	/* entry_count */
	.word	31
	/* duplicate_count */
	.word	4
	/* map */
	.xword	module8_managed_to_java
	/* duplicate_map */
	.xword	module8_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Support.v7.AppCompat */
	.xword	.L.map_aname.8
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 2b8100c8-4e0b-4580-88c6-1862bc31aef0 */
	.byte	0xc8, 0x00, 0x81, 0x2b, 0x0b, 0x4e, 0x80, 0x45, 0x88, 0xc6, 0x18, 0x62, 0xbc, 0x31, 0xae, 0xf0
	/* entry_count */
	.word	3
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module9_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: Xamarin.Android.Support.DrawerLayout */
	.xword	.L.map_aname.9
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 128a1af9-c153-42e4-b3ea-0553b0f85551 */
	.byte	0xf9, 0x1a, 0x8a, 0x12, 0x53, 0xc1, 0xe4, 0x42, 0xb3, 0xea, 0x05, 0x53, 0xb0, 0xf8, 0x55, 0x51
	/* entry_count */
	.word	4
	/* duplicate_count */
	.word	1
	/* map */
	.xword	module10_managed_to_java
	/* duplicate_map */
	.xword	module10_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Arch.Lifecycle.Common */
	.xword	.L.map_aname.10
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 1a5d70fe-e36a-498f-ad44-732cfcfda23f */
	.byte	0xfe, 0x70, 0x5d, 0x1a, 0x6a, 0xe3, 0x8f, 0x49, 0xad, 0x44, 0x73, 0x2c, 0xfc, 0xfd, 0xa2, 0x3f
	/* entry_count */
	.word	254
	/* duplicate_count */
	.word	131
	/* map */
	.xword	module11_managed_to_java
	/* duplicate_map */
	.xword	module11_managed_to_java_duplicates
	/* assembly_name: Mono.Android */
	.xword	.L.map_aname.11
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	.size	map_modules, 864
/* Managed to Java map: END */

/* Java to managed map: START */
	.section	.rodata.map_java,"a",@progbits
	.type	map_java, @object
	.p2align	2
	.global	map_java
map_java:
	/* #0 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554783
	/* java_name */
	.ascii	"android/animation/Animator"
	.zero	56
	.zero	2

	/* #1 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/animation/Animator$AnimatorListener"
	.zero	39
	.zero	2

	/* #2 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/animation/Animator$AnimatorPauseListener"
	.zero	34
	.zero	2

	/* #3 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554789
	/* java_name */
	.ascii	"android/animation/AnimatorListenerAdapter"
	.zero	41
	.zero	2

	/* #4 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/animation/TimeInterpolator"
	.zero	48
	.zero	2

	/* #5 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554794
	/* java_name */
	.ascii	"android/app/Activity"
	.zero	62
	.zero	2

	/* #6 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554795
	/* java_name */
	.ascii	"android/app/AlertDialog"
	.zero	59
	.zero	2

	/* #7 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554796
	/* java_name */
	.ascii	"android/app/AlertDialog$Builder"
	.zero	51
	.zero	2

	/* #8 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554797
	/* java_name */
	.ascii	"android/app/Application"
	.zero	59
	.zero	2

	/* #9 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/app/Application$ActivityLifecycleCallbacks"
	.zero	32
	.zero	2

	/* #10 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554800
	/* java_name */
	.ascii	"android/app/Dialog"
	.zero	64
	.zero	2

	/* #11 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554804
	/* java_name */
	.ascii	"android/app/PendingIntent"
	.zero	57
	.zero	2

	/* #12 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	33554434
	/* java_name */
	.ascii	"android/arch/lifecycle/Lifecycle"
	.zero	50
	.zero	2

	/* #13 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"android/arch/lifecycle/Lifecycle$State"
	.zero	44
	.zero	2

	/* #14 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"android/arch/lifecycle/LifecycleObserver"
	.zero	42
	.zero	2

	/* #15 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	33554439
	/* java_name */
	.ascii	"android/arch/lifecycle/LifecycleOwner"
	.zero	45
	.zero	2

	/* #16 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"android/arch/lifecycle/LiveData"
	.zero	51
	.zero	2

	/* #17 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"android/arch/lifecycle/Observer"
	.zero	51
	.zero	2

	/* #18 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"android/arch/lifecycle/ViewModelStore"
	.zero	45
	.zero	2

	/* #19 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"android/arch/lifecycle/ViewModelStoreOwner"
	.zero	40
	.zero	2

	/* #20 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/content/ComponentCallbacks"
	.zero	48
	.zero	2

	/* #21 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/content/ComponentCallbacks2"
	.zero	47
	.zero	2

	/* #22 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554807
	/* java_name */
	.ascii	"android/content/ComponentName"
	.zero	53
	.zero	2

	/* #23 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554805
	/* java_name */
	.ascii	"android/content/Context"
	.zero	59
	.zero	2

	/* #24 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554809
	/* java_name */
	.ascii	"android/content/ContextWrapper"
	.zero	52
	.zero	2

	/* #25 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/content/DialogInterface"
	.zero	51
	.zero	2

	/* #26 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/content/DialogInterface$OnClickListener"
	.zero	35
	.zero	2

	/* #27 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554806
	/* java_name */
	.ascii	"android/content/Intent"
	.zero	60
	.zero	2

	/* #28 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554821
	/* java_name */
	.ascii	"android/content/IntentSender"
	.zero	54
	.zero	2

	/* #29 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/content/SharedPreferences"
	.zero	49
	.zero	2

	/* #30 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/content/SharedPreferences$Editor"
	.zero	42
	.zero	2

	/* #31 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/content/SharedPreferences$OnSharedPreferenceChangeListener"
	.zero	16
	.zero	2

	/* #32 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554830
	/* java_name */
	.ascii	"android/content/pm/PackageInfo"
	.zero	52
	.zero	2

	/* #33 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554832
	/* java_name */
	.ascii	"android/content/pm/PackageManager"
	.zero	49
	.zero	2

	/* #34 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554836
	/* java_name */
	.ascii	"android/content/res/ColorStateList"
	.zero	48
	.zero	2

	/* #35 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554837
	/* java_name */
	.ascii	"android/content/res/Configuration"
	.zero	49
	.zero	2

	/* #36 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554838
	/* java_name */
	.ascii	"android/content/res/Resources"
	.zero	53
	.zero	2

	/* #37 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554583
	/* java_name */
	.ascii	"android/database/DataSetObserver"
	.zero	50
	.zero	2

	/* #38 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554766
	/* java_name */
	.ascii	"android/graphics/Canvas"
	.zero	59
	.zero	2

	/* #39 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554770
	/* java_name */
	.ascii	"android/graphics/Color"
	.zero	60
	.zero	2

	/* #40 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554769
	/* java_name */
	.ascii	"android/graphics/ColorFilter"
	.zero	54
	.zero	2

	/* #41 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554771
	/* java_name */
	.ascii	"android/graphics/Matrix"
	.zero	59
	.zero	2

	/* #42 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554772
	/* java_name */
	.ascii	"android/graphics/Paint"
	.zero	60
	.zero	2

	/* #43 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554773
	/* java_name */
	.ascii	"android/graphics/Point"
	.zero	60
	.zero	2

	/* #44 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554774
	/* java_name */
	.ascii	"android/graphics/PorterDuff"
	.zero	55
	.zero	2

	/* #45 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554775
	/* java_name */
	.ascii	"android/graphics/PorterDuff$Mode"
	.zero	50
	.zero	2

	/* #46 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554776
	/* java_name */
	.ascii	"android/graphics/Rect"
	.zero	61
	.zero	2

	/* #47 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554777
	/* java_name */
	.ascii	"android/graphics/RectF"
	.zero	60
	.zero	2

	/* #48 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554778
	/* java_name */
	.ascii	"android/graphics/Typeface"
	.zero	57
	.zero	2

	/* #49 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554779
	/* java_name */
	.ascii	"android/graphics/drawable/Drawable"
	.zero	48
	.zero	2

	/* #50 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/graphics/drawable/Drawable$Callback"
	.zero	39
	.zero	2

	/* #51 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554761
	/* java_name */
	.ascii	"android/net/ConnectivityManager"
	.zero	51
	.zero	2

	/* #52 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554762
	/* java_name */
	.ascii	"android/net/NetworkInfo"
	.zero	59
	.zero	2

	/* #53 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554763
	/* java_name */
	.ascii	"android/net/Uri"
	.zero	67
	.zero	2

	/* #54 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554749
	/* java_name */
	.ascii	"android/os/BaseBundle"
	.zero	61
	.zero	2

	/* #55 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554750
	/* java_name */
	.ascii	"android/os/Build"
	.zero	66
	.zero	2

	/* #56 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554751
	/* java_name */
	.ascii	"android/os/Build$VERSION"
	.zero	58
	.zero	2

	/* #57 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554753
	/* java_name */
	.ascii	"android/os/Bundle"
	.zero	65
	.zero	2

	/* #58 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554748
	/* java_name */
	.ascii	"android/os/Handler"
	.zero	64
	.zero	2

	/* #59 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554758
	/* java_name */
	.ascii	"android/os/Looper"
	.zero	65
	.zero	2

	/* #60 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554759
	/* java_name */
	.ascii	"android/os/Parcel"
	.zero	65
	.zero	2

	/* #61 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/os/Parcelable"
	.zero	61
	.zero	2

	/* #62 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/os/Parcelable$Creator"
	.zero	53
	.zero	2

	/* #63 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554747
	/* java_name */
	.ascii	"android/preference/PreferenceManager"
	.zero	46
	.zero	2

	/* #64 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554884
	/* java_name */
	.ascii	"android/runtime/JavaProxyThrowable"
	.zero	48
	.zero	2

	/* #65 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554434
	/* java_name */
	.ascii	"android/support/v13/view/DragAndDropPermissionsCompat"
	.zero	29
	.zero	2

	/* #66 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554459
	/* java_name */
	.ascii	"android/support/v4/app/ActivityCompat"
	.zero	45
	.zero	2

	/* #67 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554461
	/* java_name */
	.ascii	"android/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback"
	.zero	10
	.zero	2

	/* #68 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554463
	/* java_name */
	.ascii	"android/support/v4/app/ActivityCompat$PermissionCompatDelegate"
	.zero	20
	.zero	2

	/* #69 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554465
	/* java_name */
	.ascii	"android/support/v4/app/ActivityCompat$RequestPermissionsRequestCodeValidator"
	.zero	6
	.zero	2

	/* #70 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"android/support/v4/app/Fragment"
	.zero	51
	.zero	2

	/* #71 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"android/support/v4/app/Fragment$SavedState"
	.zero	40
	.zero	2

	/* #72 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554434
	/* java_name */
	.ascii	"android/support/v4/app/FragmentActivity"
	.zero	43
	.zero	2

	/* #73 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"android/support/v4/app/FragmentManager"
	.zero	44
	.zero	2

	/* #74 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554439
	/* java_name */
	.ascii	"android/support/v4/app/FragmentManager$BackStackEntry"
	.zero	29
	.zero	2

	/* #75 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554440
	/* java_name */
	.ascii	"android/support/v4/app/FragmentManager$FragmentLifecycleCallbacks"
	.zero	17
	.zero	2

	/* #76 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554443
	/* java_name */
	.ascii	"android/support/v4/app/FragmentManager$OnBackStackChangedListener"
	.zero	17
	.zero	2

	/* #77 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554448
	/* java_name */
	.ascii	"android/support/v4/app/FragmentTransaction"
	.zero	40
	.zero	2

	/* #78 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554439
	/* java_name */
	.ascii	"android/support/v4/app/LoaderManager"
	.zero	46
	.zero	2

	/* #79 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554441
	/* java_name */
	.ascii	"android/support/v4/app/LoaderManager$LoaderCallbacks"
	.zero	30
	.zero	2

	/* #80 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554466
	/* java_name */
	.ascii	"android/support/v4/app/SharedElementCallback"
	.zero	38
	.zero	2

	/* #81 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554468
	/* java_name */
	.ascii	"android/support/v4/app/SharedElementCallback$OnSharedElementsReadyListener"
	.zero	8
	.zero	2

	/* #82 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554470
	/* java_name */
	.ascii	"android/support/v4/app/TaskStackBuilder"
	.zero	43
	.zero	2

	/* #83 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554472
	/* java_name */
	.ascii	"android/support/v4/app/TaskStackBuilder$SupportParentable"
	.zero	25
	.zero	2

	/* #84 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554458
	/* java_name */
	.ascii	"android/support/v4/content/ContextCompat"
	.zero	42
	.zero	2

	/* #85 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554434
	/* java_name */
	.ascii	"android/support/v4/content/Loader"
	.zero	49
	.zero	2

	/* #86 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"android/support/v4/content/Loader$OnLoadCanceledListener"
	.zero	26
	.zero	2

	/* #87 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554438
	/* java_name */
	.ascii	"android/support/v4/content/Loader$OnLoadCompleteListener"
	.zero	26
	.zero	2

	/* #88 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554455
	/* java_name */
	.ascii	"android/support/v4/internal/view/SupportMenu"
	.zero	38
	.zero	2

	/* #89 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554457
	/* java_name */
	.ascii	"android/support/v4/internal/view/SupportMenuItem"
	.zero	34
	.zero	2

	/* #90 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"android/support/v4/view/ActionProvider"
	.zero	44
	.zero	2

	/* #91 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"android/support/v4/view/ActionProvider$SubUiVisibilityListener"
	.zero	20
	.zero	2

	/* #92 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554441
	/* java_name */
	.ascii	"android/support/v4/view/ActionProvider$VisibilityListener"
	.zero	25
	.zero	2

	/* #93 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554453
	/* java_name */
	.ascii	"android/support/v4/view/ViewPropertyAnimatorCompat"
	.zero	32
	.zero	2

	/* #94 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554450
	/* java_name */
	.ascii	"android/support/v4/view/ViewPropertyAnimatorListener"
	.zero	30
	.zero	2

	/* #95 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554452
	/* java_name */
	.ascii	"android/support/v4/view/ViewPropertyAnimatorUpdateListener"
	.zero	24
	.zero	2

	/* #96 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554434
	/* java_name */
	.ascii	"android/support/v4/widget/DrawerLayout"
	.zero	44
	.zero	2

	/* #97 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"android/support/v4/widget/DrawerLayout$DrawerListener"
	.zero	29
	.zero	2

	/* #98 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"android/support/v7/app/ActionBar"
	.zero	50
	.zero	2

	/* #99 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"android/support/v7/app/ActionBar$LayoutParams"
	.zero	37
	.zero	2

	/* #100 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554438
	/* java_name */
	.ascii	"android/support/v7/app/ActionBar$OnMenuVisibilityListener"
	.zero	25
	.zero	2

	/* #101 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554442
	/* java_name */
	.ascii	"android/support/v7/app/ActionBar$OnNavigationListener"
	.zero	29
	.zero	2

	/* #102 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554443
	/* java_name */
	.ascii	"android/support/v7/app/ActionBar$Tab"
	.zero	46
	.zero	2

	/* #103 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554446
	/* java_name */
	.ascii	"android/support/v7/app/ActionBar$TabListener"
	.zero	38
	.zero	2

	/* #104 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554450
	/* java_name */
	.ascii	"android/support/v7/app/ActionBarDrawerToggle"
	.zero	38
	.zero	2

	/* #105 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554452
	/* java_name */
	.ascii	"android/support/v7/app/ActionBarDrawerToggle$Delegate"
	.zero	29
	.zero	2

	/* #106 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554454
	/* java_name */
	.ascii	"android/support/v7/app/ActionBarDrawerToggle$DelegateProvider"
	.zero	21
	.zero	2

	/* #107 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554455
	/* java_name */
	.ascii	"android/support/v7/app/AppCompatActivity"
	.zero	42
	.zero	2

	/* #108 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554459
	/* java_name */
	.ascii	"android/support/v7/app/AppCompatCallback"
	.zero	42
	.zero	2

	/* #109 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554456
	/* java_name */
	.ascii	"android/support/v7/app/AppCompatDelegate"
	.zero	42
	.zero	2

	/* #110 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554434
	/* java_name */
	.ascii	"android/support/v7/graphics/drawable/DrawerArrowDrawable"
	.zero	26
	.zero	2

	/* #111 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554474
	/* java_name */
	.ascii	"android/support/v7/view/ActionMode"
	.zero	48
	.zero	2

	/* #112 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554476
	/* java_name */
	.ascii	"android/support/v7/view/ActionMode$Callback"
	.zero	39
	.zero	2

	/* #113 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554478
	/* java_name */
	.ascii	"android/support/v7/view/menu/MenuBuilder"
	.zero	42
	.zero	2

	/* #114 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554480
	/* java_name */
	.ascii	"android/support/v7/view/menu/MenuBuilder$Callback"
	.zero	33
	.zero	2

	/* #115 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554487
	/* java_name */
	.ascii	"android/support/v7/view/menu/MenuItemImpl"
	.zero	41
	.zero	2

	/* #116 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554484
	/* java_name */
	.ascii	"android/support/v7/view/menu/MenuPresenter"
	.zero	40
	.zero	2

	/* #117 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554482
	/* java_name */
	.ascii	"android/support/v7/view/menu/MenuPresenter$Callback"
	.zero	31
	.zero	2

	/* #118 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554486
	/* java_name */
	.ascii	"android/support/v7/view/menu/MenuView"
	.zero	45
	.zero	2

	/* #119 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554488
	/* java_name */
	.ascii	"android/support/v7/view/menu/SubMenuBuilder"
	.zero	39
	.zero	2

	/* #120 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554434
	/* java_name */
	.ascii	"android/support/v7/widget/CardView"
	.zero	48
	.zero	2

	/* #121 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554470
	/* java_name */
	.ascii	"android/support/v7/widget/DecorToolbar"
	.zero	44
	.zero	2

	/* #122 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554471
	/* java_name */
	.ascii	"android/support/v7/widget/ScrollingTabContainerView"
	.zero	31
	.zero	2

	/* #123 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554472
	/* java_name */
	.ascii	"android/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener"
	.zero	8
	.zero	2

	/* #124 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554473
	/* java_name */
	.ascii	"android/support/v7/widget/SwitchCompat"
	.zero	44
	.zero	2

	/* #125 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554460
	/* java_name */
	.ascii	"android/support/v7/widget/Toolbar"
	.zero	49
	.zero	2

	/* #126 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554464
	/* java_name */
	.ascii	"android/support/v7/widget/Toolbar$OnMenuItemClickListener"
	.zero	25
	.zero	2

	/* #127 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554461
	/* java_name */
	.ascii	"android/support/v7/widget/Toolbar_NavigationOnClickEventDispatcher"
	.zero	16
	.zero	2

	/* #128 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/text/Editable"
	.zero	61
	.zero	2

	/* #129 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/text/GetChars"
	.zero	61
	.zero	2

	/* #130 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/text/InputFilter"
	.zero	58
	.zero	2

	/* #131 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/text/NoCopySpan"
	.zero	59
	.zero	2

	/* #132 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/text/Spannable"
	.zero	60
	.zero	2

	/* #133 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/text/Spanned"
	.zero	62
	.zero	2

	/* #134 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/text/TextWatcher"
	.zero	58
	.zero	2

	/* #135 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/util/AttributeSet"
	.zero	57
	.zero	2

	/* #136 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554721
	/* java_name */
	.ascii	"android/util/DisplayMetrics"
	.zero	55
	.zero	2

	/* #137 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554720
	/* java_name */
	.ascii	"android/util/Log"
	.zero	66
	.zero	2

	/* #138 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554724
	/* java_name */
	.ascii	"android/util/SparseArray"
	.zero	58
	.zero	2

	/* #139 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554657
	/* java_name */
	.ascii	"android/view/ActionMode"
	.zero	59
	.zero	2

	/* #140 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/ActionMode$Callback"
	.zero	50
	.zero	2

	/* #141 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554662
	/* java_name */
	.ascii	"android/view/ActionProvider"
	.zero	55
	.zero	2

	/* #142 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/ContextMenu"
	.zero	58
	.zero	2

	/* #143 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/ContextMenu$ContextMenuInfo"
	.zero	42
	.zero	2

	/* #144 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554664
	/* java_name */
	.ascii	"android/view/ContextThemeWrapper"
	.zero	50
	.zero	2

	/* #145 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554665
	/* java_name */
	.ascii	"android/view/Display"
	.zero	62
	.zero	2

	/* #146 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554666
	/* java_name */
	.ascii	"android/view/DragEvent"
	.zero	60
	.zero	2

	/* #147 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554680
	/* java_name */
	.ascii	"android/view/InputEvent"
	.zero	59
	.zero	2

	/* #148 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554638
	/* java_name */
	.ascii	"android/view/KeyEvent"
	.zero	61
	.zero	2

	/* #149 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/KeyEvent$Callback"
	.zero	52
	.zero	2

	/* #150 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554641
	/* java_name */
	.ascii	"android/view/LayoutInflater"
	.zero	55
	.zero	2

	/* #151 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/LayoutInflater$Factory"
	.zero	47
	.zero	2

	/* #152 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/LayoutInflater$Factory2"
	.zero	46
	.zero	2

	/* #153 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/Menu"
	.zero	65
	.zero	2

	/* #154 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554695
	/* java_name */
	.ascii	"android/view/MenuInflater"
	.zero	57
	.zero	2

	/* #155 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/MenuItem"
	.zero	61
	.zero	2

	/* #156 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/MenuItem$OnActionExpandListener"
	.zero	38
	.zero	2

	/* #157 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/MenuItem$OnMenuItemClickListener"
	.zero	37
	.zero	2

	/* #158 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554646
	/* java_name */
	.ascii	"android/view/MotionEvent"
	.zero	58
	.zero	2

	/* #159 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554698
	/* java_name */
	.ascii	"android/view/SearchEvent"
	.zero	58
	.zero	2

	/* #160 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/SubMenu"
	.zero	62
	.zero	2

	/* #161 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554630
	/* java_name */
	.ascii	"android/view/View"
	.zero	65
	.zero	2

	/* #162 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/View$OnClickListener"
	.zero	49
	.zero	2

	/* #163 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/View$OnCreateContextMenuListener"
	.zero	37
	.zero	2

	/* #164 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554703
	/* java_name */
	.ascii	"android/view/ViewGroup"
	.zero	60
	.zero	2

	/* #165 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554704
	/* java_name */
	.ascii	"android/view/ViewGroup$LayoutParams"
	.zero	47
	.zero	2

	/* #166 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554705
	/* java_name */
	.ascii	"android/view/ViewGroup$MarginLayoutParams"
	.zero	41
	.zero	2

	/* #167 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/ViewManager"
	.zero	58
	.zero	2

	/* #168 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/ViewParent"
	.zero	59
	.zero	2

	/* #169 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554707
	/* java_name */
	.ascii	"android/view/ViewPropertyAnimator"
	.zero	49
	.zero	2

	/* #170 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554647
	/* java_name */
	.ascii	"android/view/ViewTreeObserver"
	.zero	53
	.zero	2

	/* #171 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/ViewTreeObserver$OnGlobalLayoutListener"
	.zero	30
	.zero	2

	/* #172 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/ViewTreeObserver$OnPreDrawListener"
	.zero	35
	.zero	2

	/* #173 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/ViewTreeObserver$OnTouchModeChangeListener"
	.zero	27
	.zero	2

	/* #174 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554654
	/* java_name */
	.ascii	"android/view/Window"
	.zero	63
	.zero	2

	/* #175 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/Window$Callback"
	.zero	54
	.zero	2

	/* #176 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/WindowManager"
	.zero	56
	.zero	2

	/* #177 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554688
	/* java_name */
	.ascii	"android/view/WindowManager$LayoutParams"
	.zero	43
	.zero	2

	/* #178 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554713
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityEvent"
	.zero	37
	.zero	2

	/* #179 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityEventSource"
	.zero	31
	.zero	2

	/* #180 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554714
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityRecord"
	.zero	36
	.zero	2

	/* #181 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554709
	/* java_name */
	.ascii	"android/view/animation/Animation"
	.zero	50
	.zero	2

	/* #182 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/animation/Interpolator"
	.zero	47
	.zero	2

	/* #183 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554585
	/* java_name */
	.ascii	"android/widget/AbsListView"
	.zero	56
	.zero	2

	/* #184 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/widget/Adapter"
	.zero	60
	.zero	2

	/* #185 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554587
	/* java_name */
	.ascii	"android/widget/AdapterView"
	.zero	56
	.zero	2

	/* #186 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/widget/AdapterView$OnItemLongClickListener"
	.zero	32
	.zero	2

	/* #187 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/widget/AdapterView$OnItemSelectedListener"
	.zero	33
	.zero	2

	/* #188 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/widget/BaseAdapter"
	.zero	56
	.zero	2

	/* #189 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554602
	/* java_name */
	.ascii	"android/widget/Button"
	.zero	61
	.zero	2

	/* #190 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554603
	/* java_name */
	.ascii	"android/widget/CheckBox"
	.zero	59
	.zero	2

	/* #191 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/widget/Checkable"
	.zero	58
	.zero	2

	/* #192 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554604
	/* java_name */
	.ascii	"android/widget/CompoundButton"
	.zero	53
	.zero	2

	/* #193 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/widget/CompoundButton$OnCheckedChangeListener"
	.zero	29
	.zero	2

	/* #194 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554612
	/* java_name */
	.ascii	"android/widget/EditText"
	.zero	59
	.zero	2

	/* #195 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554613
	/* java_name */
	.ascii	"android/widget/Filter"
	.zero	61
	.zero	2

	/* #196 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/widget/Filter$FilterListener"
	.zero	46
	.zero	2

	/* #197 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554617
	/* java_name */
	.ascii	"android/widget/FrameLayout"
	.zero	56
	.zero	2

	/* #198 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554618
	/* java_name */
	.ascii	"android/widget/HorizontalScrollView"
	.zero	47
	.zero	2

	/* #199 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/widget/ListAdapter"
	.zero	56
	.zero	2

	/* #200 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554627
	/* java_name */
	.ascii	"android/widget/ListView"
	.zero	59
	.zero	2

	/* #201 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/widget/SpinnerAdapter"
	.zero	53
	.zero	2

	/* #202 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554598
	/* java_name */
	.ascii	"android/widget/TextView"
	.zero	59
	.zero	2

	/* #203 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554628
	/* java_name */
	.ascii	"android/widget/Toast"
	.zero	62
	.zero	2

	/* #204 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554447
	/* java_name */
	.ascii	"crc6426817bea7317316c/ClientListAdapter"
	.zero	43
	.zero	2

	/* #205 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"crc648308fa867b108194/LoginView"
	.zero	51
	.zero	2

	/* #206 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"crc648308fa867b108194/MainPage_Client"
	.zero	45
	.zero	2

	/* #207 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554448
	/* java_name */
	.ascii	"crc64a0e0a82d0db9a07d/ActivityLifecycleContextListener"
	.zero	28
	.zero	2

	/* #208 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554434
	/* java_name */
	.ascii	"crc64b45b045101095069/MainActivity"
	.zero	48
	.zero	2

	/* #209 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/io/Closeable"
	.zero	65
	.zero	2

	/* #210 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33555027
	/* java_name */
	.ascii	"java/io/File"
	.zero	70
	.zero	2

	/* #211 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33555028
	/* java_name */
	.ascii	"java/io/FileDescriptor"
	.zero	60
	.zero	2

	/* #212 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33555029
	/* java_name */
	.ascii	"java/io/FileInputStream"
	.zero	59
	.zero	2

	/* #213 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/io/Flushable"
	.zero	65
	.zero	2

	/* #214 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33555037
	/* java_name */
	.ascii	"java/io/IOException"
	.zero	63
	.zero	2

	/* #215 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33555034
	/* java_name */
	.ascii	"java/io/InputStream"
	.zero	63
	.zero	2

	/* #216 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33555036
	/* java_name */
	.ascii	"java/io/InterruptedIOException"
	.zero	52
	.zero	2

	/* #217 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33555040
	/* java_name */
	.ascii	"java/io/OutputStream"
	.zero	62
	.zero	2

	/* #218 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33555042
	/* java_name */
	.ascii	"java/io/PrintWriter"
	.zero	63
	.zero	2

	/* #219 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/io/Serializable"
	.zero	62
	.zero	2

	/* #220 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33555043
	/* java_name */
	.ascii	"java/io/StringWriter"
	.zero	62
	.zero	2

	/* #221 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33555044
	/* java_name */
	.ascii	"java/io/Writer"
	.zero	68
	.zero	2

	/* #222 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/Appendable"
	.zero	62
	.zero	2

	/* #223 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554971
	/* java_name */
	.ascii	"java/lang/Boolean"
	.zero	65
	.zero	2

	/* #224 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554972
	/* java_name */
	.ascii	"java/lang/Byte"
	.zero	68
	.zero	2

	/* #225 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/CharSequence"
	.zero	60
	.zero	2

	/* #226 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554973
	/* java_name */
	.ascii	"java/lang/Character"
	.zero	63
	.zero	2

	/* #227 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554974
	/* java_name */
	.ascii	"java/lang/Class"
	.zero	67
	.zero	2

	/* #228 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554990
	/* java_name */
	.ascii	"java/lang/ClassCastException"
	.zero	54
	.zero	2

	/* #229 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554975
	/* java_name */
	.ascii	"java/lang/ClassNotFoundException"
	.zero	50
	.zero	2

	/* #230 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/Cloneable"
	.zero	63
	.zero	2

	/* #231 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/Comparable"
	.zero	62
	.zero	2

	/* #232 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554976
	/* java_name */
	.ascii	"java/lang/Double"
	.zero	66
	.zero	2

	/* #233 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554991
	/* java_name */
	.ascii	"java/lang/Enum"
	.zero	68
	.zero	2

	/* #234 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554993
	/* java_name */
	.ascii	"java/lang/Error"
	.zero	67
	.zero	2

	/* #235 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554977
	/* java_name */
	.ascii	"java/lang/Exception"
	.zero	63
	.zero	2

	/* #236 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554978
	/* java_name */
	.ascii	"java/lang/Float"
	.zero	67
	.zero	2

	/* #237 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33555004
	/* java_name */
	.ascii	"java/lang/IllegalArgumentException"
	.zero	48
	.zero	2

	/* #238 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33555005
	/* java_name */
	.ascii	"java/lang/IllegalStateException"
	.zero	51
	.zero	2

	/* #239 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33555006
	/* java_name */
	.ascii	"java/lang/IndexOutOfBoundsException"
	.zero	47
	.zero	2

	/* #240 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554980
	/* java_name */
	.ascii	"java/lang/Integer"
	.zero	65
	.zero	2

	/* #241 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/Iterable"
	.zero	64
	.zero	2

	/* #242 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33555009
	/* java_name */
	.ascii	"java/lang/LinkageError"
	.zero	60
	.zero	2

	/* #243 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554981
	/* java_name */
	.ascii	"java/lang/Long"
	.zero	68
	.zero	2

	/* #244 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33555010
	/* java_name */
	.ascii	"java/lang/NoClassDefFoundError"
	.zero	52
	.zero	2

	/* #245 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33555011
	/* java_name */
	.ascii	"java/lang/NullPointerException"
	.zero	52
	.zero	2

	/* #246 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33555012
	/* java_name */
	.ascii	"java/lang/Number"
	.zero	66
	.zero	2

	/* #247 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554982
	/* java_name */
	.ascii	"java/lang/Object"
	.zero	66
	.zero	2

	/* #248 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33555014
	/* java_name */
	.ascii	"java/lang/ReflectiveOperationException"
	.zero	44
	.zero	2

	/* #249 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/Runnable"
	.zero	64
	.zero	2

	/* #250 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554983
	/* java_name */
	.ascii	"java/lang/RuntimeException"
	.zero	56
	.zero	2

	/* #251 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33555015
	/* java_name */
	.ascii	"java/lang/SecurityException"
	.zero	55
	.zero	2

	/* #252 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554984
	/* java_name */
	.ascii	"java/lang/Short"
	.zero	67
	.zero	2

	/* #253 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554985
	/* java_name */
	.ascii	"java/lang/String"
	.zero	66
	.zero	2

	/* #254 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554987
	/* java_name */
	.ascii	"java/lang/Thread"
	.zero	66
	.zero	2

	/* #255 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554989
	/* java_name */
	.ascii	"java/lang/Throwable"
	.zero	63
	.zero	2

	/* #256 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33555016
	/* java_name */
	.ascii	"java/lang/UnsupportedOperationException"
	.zero	43
	.zero	2

	/* #257 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/annotation/Annotation"
	.zero	51
	.zero	2

	/* #258 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/reflect/AnnotatedElement"
	.zero	48
	.zero	2

	/* #259 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/reflect/GenericDeclaration"
	.zero	46
	.zero	2

	/* #260 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/reflect/Type"
	.zero	60
	.zero	2

	/* #261 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/reflect/TypeVariable"
	.zero	52
	.zero	2

	/* #262 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554908
	/* java_name */
	.ascii	"java/net/ConnectException"
	.zero	57
	.zero	2

	/* #263 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554910
	/* java_name */
	.ascii	"java/net/HttpURLConnection"
	.zero	56
	.zero	2

	/* #264 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554912
	/* java_name */
	.ascii	"java/net/InetSocketAddress"
	.zero	56
	.zero	2

	/* #265 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554913
	/* java_name */
	.ascii	"java/net/ProtocolException"
	.zero	56
	.zero	2

	/* #266 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554914
	/* java_name */
	.ascii	"java/net/Proxy"
	.zero	68
	.zero	2

	/* #267 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554915
	/* java_name */
	.ascii	"java/net/Proxy$Type"
	.zero	63
	.zero	2

	/* #268 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554916
	/* java_name */
	.ascii	"java/net/ProxySelector"
	.zero	60
	.zero	2

	/* #269 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554918
	/* java_name */
	.ascii	"java/net/SocketAddress"
	.zero	60
	.zero	2

	/* #270 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554920
	/* java_name */
	.ascii	"java/net/SocketException"
	.zero	58
	.zero	2

	/* #271 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554921
	/* java_name */
	.ascii	"java/net/SocketTimeoutException"
	.zero	51
	.zero	2

	/* #272 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554923
	/* java_name */
	.ascii	"java/net/URI"
	.zero	70
	.zero	2

	/* #273 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554924
	/* java_name */
	.ascii	"java/net/URL"
	.zero	70
	.zero	2

	/* #274 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554925
	/* java_name */
	.ascii	"java/net/URLConnection"
	.zero	60
	.zero	2

	/* #275 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554922
	/* java_name */
	.ascii	"java/net/UnknownServiceException"
	.zero	50
	.zero	2

	/* #276 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554947
	/* java_name */
	.ascii	"java/nio/Buffer"
	.zero	67
	.zero	2

	/* #277 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554949
	/* java_name */
	.ascii	"java/nio/ByteBuffer"
	.zero	63
	.zero	2

	/* #278 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/nio/channels/ByteChannel"
	.zero	53
	.zero	2

	/* #279 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/nio/channels/Channel"
	.zero	57
	.zero	2

	/* #280 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554951
	/* java_name */
	.ascii	"java/nio/channels/FileChannel"
	.zero	53
	.zero	2

	/* #281 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/nio/channels/GatheringByteChannel"
	.zero	44
	.zero	2

	/* #282 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/nio/channels/InterruptibleChannel"
	.zero	44
	.zero	2

	/* #283 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/nio/channels/ReadableByteChannel"
	.zero	45
	.zero	2

	/* #284 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/nio/channels/ScatteringByteChannel"
	.zero	43
	.zero	2

	/* #285 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/nio/channels/SeekableByteChannel"
	.zero	45
	.zero	2

	/* #286 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/nio/channels/WritableByteChannel"
	.zero	45
	.zero	2

	/* #287 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554969
	/* java_name */
	.ascii	"java/nio/channels/spi/AbstractInterruptibleChannel"
	.zero	32
	.zero	2

	/* #288 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554934
	/* java_name */
	.ascii	"java/security/KeyStore"
	.zero	60
	.zero	2

	/* #289 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/security/KeyStore$LoadStoreParameter"
	.zero	41
	.zero	2

	/* #290 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/security/KeyStore$ProtectionParameter"
	.zero	40
	.zero	2

	/* #291 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/security/Principal"
	.zero	59
	.zero	2

	/* #292 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554939
	/* java_name */
	.ascii	"java/security/SecureRandom"
	.zero	56
	.zero	2

	/* #293 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554940
	/* java_name */
	.ascii	"java/security/cert/Certificate"
	.zero	52
	.zero	2

	/* #294 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554942
	/* java_name */
	.ascii	"java/security/cert/CertificateFactory"
	.zero	45
	.zero	2

	/* #295 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554945
	/* java_name */
	.ascii	"java/security/cert/X509Certificate"
	.zero	48
	.zero	2

	/* #296 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/security/cert/X509Extension"
	.zero	50
	.zero	2

	/* #297 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554876
	/* java_name */
	.ascii	"java/util/ArrayList"
	.zero	63
	.zero	2

	/* #298 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554865
	/* java_name */
	.ascii	"java/util/Collection"
	.zero	62
	.zero	2

	/* #299 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/util/Enumeration"
	.zero	61
	.zero	2

	/* #300 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554867
	/* java_name */
	.ascii	"java/util/HashMap"
	.zero	65
	.zero	2

	/* #301 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554885
	/* java_name */
	.ascii	"java/util/HashSet"
	.zero	65
	.zero	2

	/* #302 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/util/Iterator"
	.zero	64
	.zero	2

	/* #303 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554931
	/* java_name */
	.ascii	"java/util/Random"
	.zero	66
	.zero	2

	/* #304 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554555
	/* java_name */
	.ascii	"javax/net/SocketFactory"
	.zero	59
	.zero	2

	/* #305 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"javax/net/ssl/HostnameVerifier"
	.zero	52
	.zero	2

	/* #306 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554557
	/* java_name */
	.ascii	"javax/net/ssl/HttpsURLConnection"
	.zero	50
	.zero	2

	/* #307 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"javax/net/ssl/KeyManager"
	.zero	58
	.zero	2

	/* #308 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554571
	/* java_name */
	.ascii	"javax/net/ssl/KeyManagerFactory"
	.zero	51
	.zero	2

	/* #309 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554572
	/* java_name */
	.ascii	"javax/net/ssl/SSLContext"
	.zero	58
	.zero	2

	/* #310 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"javax/net/ssl/SSLSession"
	.zero	58
	.zero	2

	/* #311 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"javax/net/ssl/SSLSessionContext"
	.zero	51
	.zero	2

	/* #312 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554573
	/* java_name */
	.ascii	"javax/net/ssl/SSLSocketFactory"
	.zero	52
	.zero	2

	/* #313 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"javax/net/ssl/TrustManager"
	.zero	56
	.zero	2

	/* #314 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554575
	/* java_name */
	.ascii	"javax/net/ssl/TrustManagerFactory"
	.zero	49
	.zero	2

	/* #315 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"javax/net/ssl/X509TrustManager"
	.zero	52
	.zero	2

	/* #316 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554551
	/* java_name */
	.ascii	"javax/security/cert/Certificate"
	.zero	51
	.zero	2

	/* #317 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554553
	/* java_name */
	.ascii	"javax/security/cert/X509Certificate"
	.zero	47
	.zero	2

	/* #318 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33555067
	/* java_name */
	.ascii	"mono/android/TypeManager"
	.zero	58
	.zero	2

	/* #319 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554818
	/* java_name */
	.ascii	"mono/android/content/DialogInterface_OnClickListenerImplementor"
	.zero	19
	.zero	2

	/* #320 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554861
	/* java_name */
	.ascii	"mono/android/runtime/InputStreamAdapter"
	.zero	43
	.zero	2

	/* #321 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"mono/android/runtime/JavaArray"
	.zero	52
	.zero	2

	/* #322 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554882
	/* java_name */
	.ascii	"mono/android/runtime/JavaObject"
	.zero	51
	.zero	2

	/* #323 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554900
	/* java_name */
	.ascii	"mono/android/runtime/OutputStreamAdapter"
	.zero	42
	.zero	2

	/* #324 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554444
	/* java_name */
	.ascii	"mono/android/support/v4/app/FragmentManager_OnBackStackChangedListenerImplementor"
	.zero	1
	.zero	2

	/* #325 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554439
	/* java_name */
	.ascii	"mono/android/support/v4/view/ActionProvider_SubUiVisibilityListenerImplementor"
	.zero	4
	.zero	2

	/* #326 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554443
	/* java_name */
	.ascii	"mono/android/support/v4/view/ActionProvider_VisibilityListenerImplementor"
	.zero	9
	.zero	2

	/* #327 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554441
	/* java_name */
	.ascii	"mono/android/support/v4/widget/DrawerLayout_DrawerListenerImplementor"
	.zero	13
	.zero	2

	/* #328 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554440
	/* java_name */
	.ascii	"mono/android/support/v7/app/ActionBar_OnMenuVisibilityListenerImplementor"
	.zero	9
	.zero	2

	/* #329 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554466
	/* java_name */
	.ascii	"mono/android/support/v7/widget/Toolbar_OnMenuItemClickListenerImplementor"
	.zero	9
	.zero	2

	/* #330 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554727
	/* java_name */
	.ascii	"mono/android/text/TextWatcherImplementor"
	.zero	42
	.zero	2

	/* #331 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554633
	/* java_name */
	.ascii	"mono/android/view/View_OnClickListenerImplementor"
	.zero	33
	.zero	2

	/* #332 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554591
	/* java_name */
	.ascii	"mono/android/widget/AdapterView_OnItemLongClickListenerImplementor"
	.zero	16
	.zero	2

	/* #333 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554608
	/* java_name */
	.ascii	"mono/android/widget/CompoundButton_OnCheckedChangeListenerImplementor"
	.zero	13
	.zero	2

	/* #334 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554988
	/* java_name */
	.ascii	"mono/java/lang/RunnableImplementor"
	.zero	48
	.zero	2

	/* #335 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554550
	/* java_name */
	.ascii	"xamarin/android/net/OldAndroidSSLSocketFactory"
	.zero	36
	.zero	2

	.size	map_java, 30912
/* Java to managed map: END */


/* java_name_width: START */
	.section	.rodata.java_name_width,"a",@progbits
	.type	java_name_width, @object
	.p2align	2
	.global	java_name_width
java_name_width:
	.size	java_name_width, 4
	.word	84
/* java_name_width: END */
