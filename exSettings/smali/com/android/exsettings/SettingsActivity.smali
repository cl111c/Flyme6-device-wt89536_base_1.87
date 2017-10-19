.class public Lcom/android/exsettings/SettingsActivity;
.super Landroid/app/Activity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;
.implements Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
.implements Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Landroid/view/MenuItem$OnActionExpandListener;
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Lcom/android/exsettings/ButtonBarHandler;
.implements Lcom/android/exsettings/dashboard/DashboardSummary$OnSearViewCallBack;


# static fields
.field private static final ENTRY_FRAGMENTS:[Ljava/lang/String;

.field private static final LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

.field private static sShowNoHomeNotice:Z


# instance fields
.field private SETTINGS_FOR_RESTRICTED:[I

.field private mActionBar:Landroid/app/ActionBar;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryPresent:Z

.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettings/dashboard/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mContent:Landroid/view/ViewGroup;

.field private mDevelopmentPreferences:Landroid/content/SharedPreferences;

.field private mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mDisplayHomeAsUpEnabled:Z

.field private mDisplaySearch:Z

.field private final mDynamicIndexableContentMonitor:Lcom/android/exsettings/search/DynamicIndexableContentMonitor;

.field private mFragmentClass:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHomeActivitiesCount:I

.field private mInitialTitle:Ljava/lang/CharSequence;

.field private mInitialTitleResId:I

.field private mIsShortcut:Z

.field private mIsShowingDashboard:Z

.field private mNeedToRevertToInitialFragment:Z

.field private mNextButton:Landroid/widget/Button;

.field private mResultIntentData:Landroid/content/Intent;

.field private mSMQ:Lcom/android/exsettings/SmqSettings;

.field private mSearchMenuItem:Landroid/view/MenuItem;

.field private mSearchMenuItemExpanded:Z

.field private mSearchQuery:Ljava/lang/String;

.field private mSearchResultsFragment:Lcom/android/exsettings/dashboard/SearchResultsSummary;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 301
    sput-boolean v3, Lcom/android/exsettings/SettingsActivity;->sShowNoHomeNotice:Z

    .line 370
    const/16 v0, 0x51

    new-array v0, v0, [Ljava/lang/String;

    const-class v1, Lcom/android/exsettings/WirelessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-class v1, Lcom/android/exsettings/wifi/WifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-class v2, Lcom/android/exsettings/wifi/AdvancedWifiSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/android/exsettings/bluetooth/BluetoothSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/android/exsettings/MultisimAndDataSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/android/exsettings/sim/SimSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/android/exsettings/TetherSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/android/exsettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lcom/android/exsettings/vpn2/VpnSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lcom/android/exsettings/DateTimeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Lcom/android/exsettings/LocalePicker;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Lcom/android/exsettings/nfc/NfcSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Lcom/android/exsettings/TetherSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-class v2, Lcom/android/exsettings/LocksreenSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-class v2, Lcom/android/exsettings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-class v2, Lcom/android/exsettings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-class v2, Lcom/android/exsettings/inputmethod/UserDictionaryList;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-class v2, Lcom/android/exsettings/UserDictionarySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-class v2, Lcom/android/exsettings/HomeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-class v2, Lcom/android/exsettings/wakeup/GestureSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-class v2, Lcom/android/exsettings/wakeup/WakeUpSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-class v2, Lcom/android/exsettings/wakeup/AppSelect;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-class v2, Lcom/android/exsettings/DisplaySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-class v2, Lcom/android/exsettings/DeviceInfoSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-class v2, Lcom/android/exsettings/applications/ManageApplications;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-class v2, Lcom/android/exsettings/applications/ManageAssist;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-class v2, Lcom/android/exsettings/applications/ProcessStatsUi;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-class v2, Lcom/android/exsettings/VirtualKeySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-class v2, Lcom/android/exsettings/notification/NotificationStation;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-class v2, Lcom/android/exsettings/location/LocationSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-class v2, Lcom/android/exsettings/SecuritySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-class v2, Lcom/android/exsettings/applications/UsageAccessDetails;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-class v2, Lcom/android/exsettings/PrivacySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-class v2, Lcom/android/exsettings/DeviceAdminSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-class v2, Lcom/android/exsettings/accessibility/AccessibilitySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-class v2, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-class v2, Lcom/android/exsettings/accessibility/ToggleDaltonizerPreferenceFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-class v2, Lcom/android/exsettings/tts/TextToSpeechSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-class v2, Lcom/android/exsettings/deviceinfo/StorageSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-class v2, Lcom/android/exsettings/deviceinfo/PrivateVolumeForget;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-class v2, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-class v2, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-class v2, Lcom/android/exsettings/DevelopmentSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-class v2, Lcom/android/exsettings/nfc/AndroidBeam;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-class v2, Lcom/android/exsettings/wfd/WifiDisplaySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-class v2, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-class v2, Lcom/android/exsettings/accounts/AccountSyncSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-class v2, Lcom/android/exsettings/accounts/AccountSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-class v2, Lcom/android/exsettings/CryptKeeperSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-class v2, Lcom/android/exsettings/DataUsageSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-class v2, Lcom/android/exsettings/DreamSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-class v2, Lcom/android/exsettings/users/UserSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-class v2, Lcom/android/exsettings/notification/NotificationAccessSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-class v2, Lcom/android/exsettings/notification/ZenAccessSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-class v2, Lcom/android/exsettings/print/PrintSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-class v2, Lcom/android/exsettings/print/PrintJobSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-class v2, Lcom/android/exsettings/TrustedCredentialsSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-class v2, Lcom/android/exsettings/nfc/PaymentSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-class v2, Lcom/android/exsettings/inputmethod/KeyboardLayoutPickerFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-class v2, Lcom/android/exsettings/notification/ZenModeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-class v2, Lcom/android/exsettings/notification/NotificationStatusbar;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-class v2, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-class v2, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-class v2, Lcom/android/exsettings/applications/InstalledAppDetails;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-class v2, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-class v2, Lcom/android/exsettings/notification/AppNotificationSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-class v2, Lcom/android/exsettings/notification/OtherSoundSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-class v2, Lcom/android/exsettings/ApnSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-class v2, Lcom/android/exsettings/WifiCallingSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-class v2, Lcom/android/exsettings/notification/ZenModePrioritySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-class v2, Lcom/android/exsettings/notification/ZenModeAutomationSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-class v2, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-class v2, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-class v2, Lcom/android/exsettings/notification/ZenModeExternalRuleSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-class v2, Lcom/android/exsettings/applications/ProcessStatsUi;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-class v2, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-class v2, Lcom/android/exsettings/applications/ProcessStatsSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-class v2, Lcom/android/exsettings/applications/DrawOverlayDetails;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-class v2, Lcom/android/exsettings/applications/WriteSettingsDetails;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-class v2, Lcom/android/exsettings/notification/SoundSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exsettings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    .line 464
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/exsettings/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 191
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 311
    const/16 v0, 0x28

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/exsettings/SettingsActivity;->SETTINGS_FOR_RESTRICTED:[I

    .line 471
    iput-boolean v2, p0, Lcom/android/exsettings/SettingsActivity;->mBatteryPresent:Z

    .line 472
    new-instance v0, Lcom/android/exsettings/SettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/SettingsActivity$1;-><init>(Lcom/android/exsettings/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/exsettings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 487
    new-instance v0, Lcom/android/exsettings/search/DynamicIndexableContentMonitor;

    invoke-direct {v0}, Lcom/android/exsettings/search/DynamicIndexableContentMonitor;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/android/exsettings/search/DynamicIndexableContentMonitor;

    .line 505
    iput-boolean v1, p0, Lcom/android/exsettings/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 510
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    .line 514
    new-instance v0, Lcom/android/exsettings/SettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/SettingsActivity$2;-><init>(Lcom/android/exsettings/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/exsettings/SettingsActivity;->mHandler:Landroid/os/Handler;

    .line 528
    iput-boolean v1, p0, Lcom/android/exsettings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 529
    iput v2, p0, Lcom/android/exsettings/SettingsActivity;->mHomeActivitiesCount:I

    return-void

    .line 311
    nop

    :array_0
    .array-data 4
        0x7f120300
        0x7f120302
        0x7f120303
        0x7f120308
        0x7f120301
        0x7f12030a
        0x7f12030b
        0x7f12030f
        0x7f120310
        0x7f120311
        0x7f120314
        0x7f12030e
        0x7f120315
        0x7f120312
        0x7f120313
        0x7f120316
        0x7f120304
        0x7f120305
        0x7f120306
        0x7f12031d
        0x7f12031c
        0x7f12031f
        0x7f120320
        0x7f120322
        0x7f120318
        0x7f120319
        0x7f120321
        0x7f120324
        0x7f120326
        0x7f12032a
        0x7f120327
        0x7f120328
        0x7f12031a
        0x7f12030d
        0x7f12032c
        0x7f120330
        0x7f12032f
        0x7f120317
        0x7f12032b
        0x7f12007a
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/exsettings/SettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/SettingsActivity;

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/android/exsettings/SettingsActivity;->mBatteryPresent:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/exsettings/SettingsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/SettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 191
    iput-boolean p1, p0, Lcom/android/exsettings/SettingsActivity;->mBatteryPresent:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/exsettings/SettingsActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/SettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/android/exsettings/SettingsActivity;->invalidateCategories(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/exsettings/SettingsActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/SettingsActivity;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/exsettings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/exsettings/SettingsActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/SettingsActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/android/exsettings/SettingsActivity;->buildDashboardCategories(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/exsettings/SettingsActivity;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/SettingsActivity;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/exsettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/exsettings/SettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/SettingsActivity;

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/android/exsettings/SettingsActivity;->switchToSearchResultsFragmentIfNeeded()V

    return-void
.end method

.method private addExternalTiles(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/dashboard/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1482
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/dashboard/DashboardCategory;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1484
    .local v0, "addedCache":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/exsettings/dashboard/DashboardTile;>;"
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    .line 1485
    .local v3, "userManager":Landroid/os/UserManager;
    invoke-virtual {v3}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 1486
    .local v2, "user":Landroid/os/UserHandle;
    invoke-direct {p0, p1, v2, v0}, Lcom/android/exsettings/SettingsActivity;->addExternalTiles(Ljava/util/List;Landroid/os/UserHandle;Ljava/util/Map;)V

    goto :goto_0

    .line 1488
    .end local v2    # "user":Landroid/os/UserHandle;
    :cond_0
    return-void
.end method

.method private addExternalTiles(Ljava/util/List;Landroid/os/UserHandle;Ljava/util/Map;)V
    .locals 15
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/dashboard/DashboardCategory;",
            ">;",
            "Landroid/os/UserHandle;",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/exsettings/dashboard/DashboardTile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1492
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/dashboard/DashboardCategory;>;"
    .local p3, "addedCache":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/exsettings/dashboard/DashboardTile;>;"
    invoke-virtual {p0}, Lcom/android/exsettings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 1493
    .local v8, "pm":Landroid/content/pm/PackageManager;
    new-instance v5, Landroid/content/Intent;

    const-string v12, "com.android.settings.action.EXTRA_SETTINGS"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1494
    .local v5, "intent":Landroid/content/Intent;
    const/16 v12, 0x80

    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v13

    invoke-virtual {v8, v5, v12, v13}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v10

    .line 1496
    .local v10, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 1497
    .local v9, "resolved":Landroid/content/pm/ResolveInfo;
    iget-boolean v12, v9, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v12, :cond_0

    .line 1501
    iget-object v1, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1502
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1503
    .local v7, "metaData":Landroid/os/Bundle;
    if-eqz v7, :cond_1

    const-string v12, "com.android.settings.category"

    invoke-virtual {v7, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 1504
    :cond_1
    const-string v13, "Settings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Found "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v14, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " for action "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "com.android.settings.action.EXTRA_SETTINGS"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " missing metadata "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    if-nez v7, :cond_2

    const-string v12, ""

    :goto_1
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v12, "com.android.settings.category"

    goto :goto_1

    .line 1509
    :cond_3
    const-string v12, "com.android.settings.category"

    invoke-virtual {v7, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1510
    .local v3, "categoryKey":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v3}, Lcom/android/exsettings/SettingsActivity;->getCategory(Ljava/util/List;Ljava/lang/String;)Lcom/android/exsettings/dashboard/DashboardCategory;

    move-result-object v2

    .line 1511
    .local v2, "category":Lcom/android/exsettings/dashboard/DashboardCategory;
    if-nez v2, :cond_4

    .line 1512
    const-string v12, "Settings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Activity "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " has unknown "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "category key "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1516
    :cond_4
    new-instance v6, Landroid/util/Pair;

    iget-object v12, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v13, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v12, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1518
    .local v6, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/exsettings/dashboard/DashboardTile;

    .line 1519
    .local v11, "tile":Lcom/android/exsettings/dashboard/DashboardTile;
    if-nez v11, :cond_5

    .line 1520
    new-instance v11, Lcom/android/exsettings/dashboard/DashboardTile;

    .end local v11    # "tile":Lcom/android/exsettings/dashboard/DashboardTile;
    invoke-direct {v11}, Lcom/android/exsettings/dashboard/DashboardTile;-><init>()V

    .line 1521
    .restart local v11    # "tile":Lcom/android/exsettings/dashboard/DashboardTile;
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    iget-object v13, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v14, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    iput-object v12, v11, Lcom/android/exsettings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    .line 1523
    invoke-static {p0, v11}, Lcom/android/exsettings/Utils;->updateTileToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Lcom/android/exsettings/dashboard/DashboardTile;)Z

    .line 1525
    iget v12, v2, Lcom/android/exsettings/dashboard/DashboardCategory;->externalIndex:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_6

    .line 1528
    invoke-virtual {v2, v11}, Lcom/android/exsettings/dashboard/DashboardCategory;->addTile(Lcom/android/exsettings/dashboard/DashboardTile;)V

    .line 1532
    :goto_2
    move-object/from16 v0, p3

    invoke-interface {v0, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1534
    :cond_5
    iget-object v12, v11, Lcom/android/exsettings/dashboard/DashboardTile;->userHandle:Ljava/util/ArrayList;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1530
    :cond_6
    iget v12, v2, Lcom/android/exsettings/dashboard/DashboardCategory;->externalIndex:I

    invoke-virtual {v2, v12, v11}, Lcom/android/exsettings/dashboard/DashboardCategory;->addTile(ILcom/android/exsettings/dashboard/DashboardTile;)V

    goto :goto_2

    .line 1536
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "category":Lcom/android/exsettings/dashboard/DashboardCategory;
    .end local v3    # "categoryKey":Ljava/lang/String;
    .end local v6    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "metaData":Landroid/os/Bundle;
    .end local v9    # "resolved":Landroid/content/pm/ResolveInfo;
    .end local v11    # "tile":Lcom/android/exsettings/dashboard/DashboardTile;
    :cond_7
    return-void
.end method

.method private buildDashboardCategories(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/dashboard/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1183
    .local p1, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/dashboard/DashboardCategory;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1186
    const v0, 0x7f080016

    invoke-static {v0, p1, p0}, Lcom/android/exsettings/SettingsActivity;->loadCategoriesFromResource(ILjava/util/List;Landroid/content/Context;)V

    .line 1187
    invoke-direct {p0, p1}, Lcom/android/exsettings/SettingsActivity;->updateTilesList(Ljava/util/List;)V

    .line 1188
    return-void
.end method

.method private getCategory(Ljava/util/List;Ljava/lang/String;)Lcom/android/exsettings/dashboard/DashboardCategory;
    .locals 3
    .param p2, "categoryKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/dashboard/DashboardCategory;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/exsettings/dashboard/DashboardCategory;"
        }
    .end annotation

    .prologue
    .line 1539
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/dashboard/DashboardCategory;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/dashboard/DashboardCategory;

    .line 1540
    .local v0, "category":Lcom/android/exsettings/dashboard/DashboardCategory;
    iget-object v2, v0, Lcom/android/exsettings/dashboard/DashboardCategory;->key:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1544
    .end local v0    # "category":Lcom/android/exsettings/dashboard/DashboardCategory;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getHomeActivitiesCount()I
    .locals 2

    .prologue
    .line 832
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 833
    .local v0, "homeApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/exsettings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 834
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    return v1
.end method

.method private getMetaData()V
    .locals 5

    .prologue
    .line 1586
    :try_start_0
    invoke-virtual {p0}, Lcom/android/exsettings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/exsettings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 1588
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_1

    .line 1594
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    return-void

    .line 1589
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_1
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/SettingsActivity;->mFragmentClass:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1590
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v1

    .line 1592
    .local v1, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot get Metadata for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/exsettings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1026
    iget-object v1, p0, Lcom/android/exsettings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/exsettings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    .line 1038
    :cond_0
    :goto_0
    return-object v0

    .line 1028
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1029
    .local v0, "intentClass":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 1031
    :cond_2
    const-string v1, "com.android.settings.ManageApplications"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.RunningServices"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.applications.StorageUse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1035
    :cond_3
    const-class v1, Lcom/android/exsettings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private invalidateCategories(Z)V
    .locals 3
    .param p1, "forceRefresh"    # Z

    .prologue
    const/4 v2, 0x1

    .line 569
    iget-object v1, p0, Lcom/android/exsettings/SettingsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 570
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 571
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 572
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "msg_data_force_refresh"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 574
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private static isLikeShortCutIntent(Landroid/content/Intent;)Z
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 649
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 650
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 656
    :cond_0
    :goto_0
    return v2

    .line 653
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v3, Lcom/android/exsettings/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 654
    sget-object v3, Lcom/android/exsettings/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    .line 653
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static isShortCutIntent(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 644
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 645
    .local v0, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    const-string v1, "com.android.settings.SHORTCUT"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static loadCategoriesFromResource(ILjava/util/List;Landroid/content/Context;)V
    .locals 20
    .param p0, "resid"    # I
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/dashboard/DashboardCategory;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1199
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/dashboard/DashboardCategory;>;"
    const/4 v12, 0x0

    .line 1201
    .local v12, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v12

    .line 1202
    invoke-static {v12}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 1206
    .local v2, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v16

    .local v16, "type":I
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 1210
    :cond_1
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1211
    .local v10, "nodeName":Ljava/lang/String;
    const-string v17, "dashboard-categories"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 1212
    new-instance v17, Ljava/lang/RuntimeException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "XML document must start with <preference-categories> tag; found"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " at "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1349
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v10    # "nodeName":Ljava/lang/String;
    .end local v16    # "type":I
    :catch_0
    move-exception v5

    .line 1350
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v17, Ljava/lang/RuntimeException;

    const-string v18, "Error parsing categories"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1354
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v17

    if-eqz v12, :cond_2

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    throw v17

    .line 1217
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local v10    # "nodeName":Ljava/lang/String;
    .restart local v16    # "type":I
    :cond_3
    const/4 v4, 0x0

    .line 1219
    .local v4, "curBundle":Landroid/os/Bundle;
    :try_start_2
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    .line 1221
    .local v11, "outerDepth":I
    :cond_4
    :goto_0
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1b

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v11, :cond_1b

    .line 1222
    :cond_5
    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_4

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_4

    .line 1226
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1227
    const-string v17, "dashboard-category"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1a

    .line 1228
    new-instance v3, Lcom/android/exsettings/dashboard/DashboardCategory;

    invoke-direct {v3}, Lcom/android/exsettings/dashboard/DashboardCategory;-><init>()V

    .line 1230
    .local v3, "category":Lcom/android/exsettings/dashboard/DashboardCategory;
    sget-object v17, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 1232
    .local v13, "sa":Landroid/content/res/TypedArray;
    const/16 v17, 0x1

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    iput-wide v0, v3, Lcom/android/exsettings/dashboard/DashboardCategory;->id:J

    .line 1236
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 1238
    .local v15, "tv":Landroid/util/TypedValue;
    if-eqz v15, :cond_6

    iget v0, v15, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 1239
    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    if-eqz v17, :cond_f

    .line 1240
    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v3, Lcom/android/exsettings/dashboard/DashboardCategory;->titleRes:I

    .line 1245
    :cond_6
    :goto_1
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 1246
    sget-object v17, Lcom/android/internal/R$styleable;->Preference:[I

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 1248
    const/16 v17, 0x6

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 1250
    if-eqz v15, :cond_7

    iget v0, v15, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 1251
    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    if-eqz v17, :cond_10

    .line 1252
    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v3, Lcom/android/exsettings/dashboard/DashboardCategory;->key:Ljava/lang/String;

    .line 1257
    :cond_7
    :goto_2
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 1259
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    .line 1261
    .local v6, "innerDepth":I
    :cond_8
    :goto_3
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_19

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_9

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v6, :cond_19

    .line 1262
    :cond_9
    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_8

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_8

    .line 1266
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1267
    .local v8, "innerNodeName":Ljava/lang/String;
    const-string v17, "dashboard-tile"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_17

    .line 1268
    new-instance v14, Lcom/android/exsettings/dashboard/DashboardTile;

    invoke-direct {v14}, Lcom/android/exsettings/dashboard/DashboardTile;-><init>()V

    .line 1270
    .local v14, "tile":Lcom/android/exsettings/dashboard/DashboardTile;
    sget-object v17, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 1272
    const/16 v17, 0x1

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    iput-wide v0, v14, Lcom/android/exsettings/dashboard/DashboardTile;->id:J

    .line 1275
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 1277
    if-eqz v15, :cond_a

    iget v0, v15, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 1278
    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    if-eqz v17, :cond_11

    .line 1279
    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v14, Lcom/android/exsettings/dashboard/DashboardTile;->titleRes:I

    .line 1284
    :cond_a
    :goto_4
    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 1286
    if-eqz v15, :cond_b

    iget v0, v15, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 1287
    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    if-eqz v17, :cond_12

    .line 1288
    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v14, Lcom/android/exsettings/dashboard/DashboardTile;->summaryRes:I

    .line 1293
    :cond_b
    :goto_5
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    iput v0, v14, Lcom/android/exsettings/dashboard/DashboardTile;->iconRes:I

    .line 1295
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/exsettings/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    .line 1297
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 1299
    if-nez v4, :cond_c

    .line 1300
    new-instance v4, Landroid/os/Bundle;

    .end local v4    # "curBundle":Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1303
    .restart local v4    # "curBundle":Landroid/os/Bundle;
    :cond_c
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    .line 1305
    .local v7, "innerDepth2":I
    :cond_d
    :goto_6
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_15

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_e

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v7, :cond_15

    .line 1306
    :cond_e
    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_d

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_d

    .line 1310
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1311
    .local v9, "innerNodeName2":Ljava/lang/String;
    const-string v17, "extra"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    .line 1312
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const-string v18, "extra"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 1314
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    .line 1351
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v3    # "category":Lcom/android/exsettings/dashboard/DashboardCategory;
    .end local v4    # "curBundle":Landroid/os/Bundle;
    .end local v6    # "innerDepth":I
    .end local v7    # "innerDepth2":I
    .end local v8    # "innerNodeName":Ljava/lang/String;
    .end local v9    # "innerNodeName2":Ljava/lang/String;
    .end local v10    # "nodeName":Ljava/lang/String;
    .end local v11    # "outerDepth":I
    .end local v13    # "sa":Landroid/content/res/TypedArray;
    .end local v14    # "tile":Lcom/android/exsettings/dashboard/DashboardTile;
    .end local v15    # "tv":Landroid/util/TypedValue;
    .end local v16    # "type":I
    :catch_1
    move-exception v5

    .line 1352
    .local v5, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v17, Ljava/lang/RuntimeException;

    const-string v18, "Error parsing categories"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1242
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local v3    # "category":Lcom/android/exsettings/dashboard/DashboardCategory;
    .restart local v4    # "curBundle":Landroid/os/Bundle;
    .restart local v10    # "nodeName":Ljava/lang/String;
    .restart local v11    # "outerDepth":I
    .restart local v13    # "sa":Landroid/content/res/TypedArray;
    .restart local v15    # "tv":Landroid/util/TypedValue;
    .restart local v16    # "type":I
    :cond_f
    :try_start_4
    iget-object v0, v15, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v3, Lcom/android/exsettings/dashboard/DashboardCategory;->title:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 1254
    :cond_10
    iget-object v0, v15, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v3, Lcom/android/exsettings/dashboard/DashboardCategory;->key:Ljava/lang/String;

    goto/16 :goto_2

    .line 1281
    .restart local v6    # "innerDepth":I
    .restart local v8    # "innerNodeName":Ljava/lang/String;
    .restart local v14    # "tile":Lcom/android/exsettings/dashboard/DashboardTile;
    :cond_11
    iget-object v0, v15, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/exsettings/dashboard/DashboardTile;->title:Ljava/lang/CharSequence;

    goto/16 :goto_4

    .line 1290
    :cond_12
    iget-object v0, v15, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/exsettings/dashboard/DashboardTile;->summary:Ljava/lang/CharSequence;

    goto/16 :goto_5

    .line 1316
    .restart local v7    # "innerDepth2":I
    .restart local v9    # "innerNodeName2":Ljava/lang/String;
    :cond_13
    const-string v17, "intent"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 1317
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v12, v2}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/exsettings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    goto/16 :goto_6

    .line 1321
    :cond_14
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 1325
    .end local v9    # "innerNodeName2":Ljava/lang/String;
    :cond_15
    invoke-virtual {v4}, Landroid/os/Bundle;->size()I

    move-result v17

    if-lez v17, :cond_16

    .line 1326
    iput-object v4, v14, Lcom/android/exsettings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    .line 1327
    const/4 v4, 0x0

    .line 1332
    :cond_16
    invoke-static/range {p2 .. p2}, Lcom/android/exsettings/Utils;->showSimCardTile(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 1333
    invoke-virtual {v3, v14}, Lcom/android/exsettings/dashboard/DashboardCategory;->addTile(Lcom/android/exsettings/dashboard/DashboardTile;)V

    goto/16 :goto_3

    .line 1336
    .end local v7    # "innerDepth2":I
    .end local v14    # "tile":Lcom/android/exsettings/dashboard/DashboardTile;
    :cond_17
    const-string v17, "external-tiles"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_18

    .line 1337
    invoke-virtual {v3}, Lcom/android/exsettings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v17

    move/from16 v0, v17

    iput v0, v3, Lcom/android/exsettings/dashboard/DashboardCategory;->externalIndex:I

    goto/16 :goto_3

    .line 1339
    :cond_18
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_3

    .line 1343
    .end local v8    # "innerNodeName":Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1345
    .end local v3    # "category":Lcom/android/exsettings/dashboard/DashboardCategory;
    .end local v6    # "innerDepth":I
    .end local v13    # "sa":Landroid/content/res/TypedArray;
    .end local v15    # "tv":Landroid/util/TypedValue;
    :cond_1a
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1354
    :cond_1b
    if-eqz v12, :cond_1c

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1356
    :cond_1c
    return-void
.end method

.method public static requestHomeNotice()V
    .locals 1

    .prologue
    .line 1611
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/exsettings/SettingsActivity;->sShowNoHomeNotice:Z

    .line 1612
    return-void
.end method

.method private revertToInitialFragment()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1674
    iput-boolean v1, p0, Lcom/android/exsettings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 1675
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettings/SettingsActivity;->mSearchResultsFragment:Lcom/android/exsettings/dashboard/SearchResultsSummary;

    .line 1676
    iput-boolean v1, p0, Lcom/android/exsettings/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 1677
    invoke-virtual {p0}, Lcom/android/exsettings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, ":settings:prefs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 1679
    iget-object v0, p0, Lcom/android/exsettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1680
    iget-object v0, p0, Lcom/android/exsettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 1682
    :cond_0
    return-void
.end method

.method private setTitleFromBackStack()I
    .locals 4

    .prologue
    .line 873
    invoke-virtual {p0}, Lcom/android/exsettings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 875
    .local v1, "count":I
    if-nez v1, :cond_1

    .line 876
    iget v2, p0, Lcom/android/exsettings/SettingsActivity;->mInitialTitleResId:I

    if-lez v2, :cond_0

    .line 877
    iget v2, p0, Lcom/android/exsettings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {p0, v2}, Lcom/android/exsettings/SettingsActivity;->setTitle(I)V

    .line 881
    :goto_0
    const/4 v1, 0x0

    .line 887
    .end local v1    # "count":I
    :goto_1
    return v1

    .line 879
    .restart local v1    # "count":I
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/exsettings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 884
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v0

    .line 885
    .local v0, "bse":Landroid/app/FragmentManager$BackStackEntry;
    invoke-direct {p0, v0}, Lcom/android/exsettings/SettingsActivity;->setTitleFromBackStackEntry(Landroid/app/FragmentManager$BackStackEntry;)V

    goto :goto_1
.end method

.method private setTitleFromBackStackEntry(Landroid/app/FragmentManager$BackStackEntry;)V
    .locals 2
    .param p1, "bse"    # Landroid/app/FragmentManager$BackStackEntry;

    .prologue
    .line 892
    invoke-interface {p1}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitleRes()I

    move-result v1

    .line 893
    .local v1, "titleRes":I
    if-lez v1, :cond_1

    .line 894
    invoke-virtual {p0, v1}, Lcom/android/exsettings/SettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 898
    .local v0, "title":Ljava/lang/CharSequence;
    :goto_0
    if-eqz v0, :cond_0

    .line 899
    invoke-virtual {p0, v0}, Lcom/android/exsettings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 901
    :cond_0
    return-void

    .line 896
    .end local v0    # "title":Ljava/lang/CharSequence;
    :cond_1
    invoke-interface {p1}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "title":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private setTitleFromIntent(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, -0x1

    .line 838
    const-string v5, ":settings:show_fragment_title_resid"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 839
    .local v3, "initialTitleResId":I
    if-lez v3, :cond_1

    .line 840
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/exsettings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 841
    iput v3, p0, Lcom/android/exsettings/SettingsActivity;->mInitialTitleResId:I

    .line 843
    const-string v5, ":settings:show_fragment_title_res_package_name"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 845
    .local v4, "initialTitleResPackageName":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 847
    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/exsettings/SettingsActivity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 849
    .local v0, "authContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/android/exsettings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exsettings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 850
    iget-object v5, p0, Lcom/android/exsettings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Lcom/android/exsettings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 851
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/exsettings/SettingsActivity;->mInitialTitleResId:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 865
    .end local v0    # "authContext":Landroid/content/Context;
    .end local v4    # "initialTitleResPackageName":Ljava/lang/String;
    :goto_0
    return-void

    .line 853
    .restart local v4    # "initialTitleResPackageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 854
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "Settings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not find package"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 857
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    iget v5, p0, Lcom/android/exsettings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {p0, v5}, Lcom/android/exsettings/SettingsActivity;->setTitle(I)V

    goto :goto_0

    .line 860
    .end local v4    # "initialTitleResPackageName":Ljava/lang/String;
    :cond_1
    iput v6, p0, Lcom/android/exsettings/SettingsActivity;->mInitialTitleResId:I

    .line 861
    const-string v5, ":settings:show_fragment_title"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 862
    .local v2, "initialTitle":Ljava/lang/String;
    if-eqz v2, :cond_2

    .end local v2    # "initialTitle":Ljava/lang/String;
    :goto_1
    iput-object v2, p0, Lcom/android/exsettings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 863
    iget-object v5, p0, Lcom/android/exsettings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Lcom/android/exsettings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 862
    .restart local v2    # "initialTitle":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/exsettings/SettingsActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1
.end method

.method private switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;
    .locals 5
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "validate"    # Z
    .param p4, "addToBackStack"    # Z
    .param p5, "titleResId"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;
    .param p7, "withTransition"    # Z

    .prologue
    .line 1154
    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/exsettings/SettingsActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1155
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid fragment for this activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1158
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 1159
    .local v0, "f":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/android/exsettings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1160
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    const v2, 0x7f1201eb

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1161
    if-eqz p7, :cond_1

    .line 1162
    iget-object v2, p0, Lcom/android/exsettings/SettingsActivity;->mContent:Landroid/view/ViewGroup;

    invoke-static {v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 1164
    :cond_1
    if-eqz p4, :cond_2

    .line 1165
    const-string v2, ":settings:prefs"

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1167
    :cond_2
    if-lez p5, :cond_4

    .line 1168
    invoke-virtual {v1, p5}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    .line 1172
    :cond_3
    :goto_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1173
    invoke-virtual {p0}, Lcom/android/exsettings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1174
    return-object v0

    .line 1169
    :cond_4
    if-eqz p6, :cond_3

    .line 1170
    invoke-virtual {v1, p6}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method private switchToSearchResultsFragmentIfNeeded()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 1654
    iget-object v0, p0, Lcom/android/exsettings/SettingsActivity;->mSearchResultsFragment:Lcom/android/exsettings/dashboard/SearchResultsSummary;

    if-eqz v0, :cond_0

    .line 1667
    :goto_0
    return-void

    .line 1657
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f1201eb

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v8

    .line 1658
    .local v8, "current":Landroid/app/Fragment;
    if-eqz v8, :cond_1

    instance-of v0, v8, Lcom/android/exsettings/dashboard/SearchResultsSummary;

    if-eqz v0, :cond_1

    .line 1659
    check-cast v8, Lcom/android/exsettings/dashboard/SearchResultsSummary;

    .end local v8    # "current":Landroid/app/Fragment;
    iput-object v8, p0, Lcom/android/exsettings/SettingsActivity;->mSearchResultsFragment:Lcom/android/exsettings/dashboard/SearchResultsSummary;

    .line 1665
    :goto_1
    iget-object v0, p0, Lcom/android/exsettings/SettingsActivity;->mSearchResultsFragment:Lcom/android/exsettings/dashboard/SearchResultsSummary;

    iget-object v1, p0, Lcom/android/exsettings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/dashboard/SearchResultsSummary;->setSearchView(Landroid/widget/SearchView;)V

    .line 1666
    iput-boolean v4, p0, Lcom/android/exsettings/SettingsActivity;->mSearchMenuItemExpanded:Z

    goto :goto_0

    .line 1661
    .restart local v8    # "current":Landroid/app/Fragment;
    :cond_1
    const-class v0, Lcom/android/exsettings/dashboard/SearchResultsSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const v5, 0x7f0c09eb

    move-object v0, p0

    move-object v6, v2

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/android/exsettings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/dashboard/SearchResultsSummary;

    iput-object v0, p0, Lcom/android/exsettings/SettingsActivity;->mSearchResultsFragment:Lcom/android/exsettings/dashboard/SearchResultsSummary;

    goto :goto_1
.end method

.method private updateHomeSettingTiles(Lcom/android/exsettings/dashboard/DashboardTile;)Z
    .locals 6
    .param p1, "tile"    # Lcom/android/exsettings/dashboard/DashboardTile;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1549
    const-string v4, "home_prefs"

    invoke-virtual {p0, v4, v3}, Lcom/android/exsettings/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1550
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v4, "do_show"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1581
    :goto_0
    return v2

    .line 1555
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/exsettings/SettingsActivity;->getHomeActivitiesCount()I

    move-result v4

    iput v4, p0, Lcom/android/exsettings/SettingsActivity;->mHomeActivitiesCount:I

    .line 1556
    iget v4, p0, Lcom/android/exsettings/SettingsActivity;->mHomeActivitiesCount:I

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    .line 1561
    sget-boolean v4, Lcom/android/exsettings/SettingsActivity;->sShowNoHomeNotice:Z

    if-eqz v4, :cond_1

    .line 1562
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/exsettings/SettingsActivity;->sShowNoHomeNotice:Z

    .line 1563
    invoke-static {p0}, Lcom/android/exsettings/dashboard/NoHomeDialogFragment;->show(Landroid/app/Activity;)V

    :cond_1
    move v2, v3

    .line 1565
    goto :goto_0

    .line 1570
    :cond_2
    iget-object v3, p1, Lcom/android/exsettings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    if-nez v3, :cond_3

    .line 1571
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p1, Lcom/android/exsettings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    .line 1573
    :cond_3
    iget-object v3, p1, Lcom/android/exsettings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    const-string v4, "show"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1580
    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "do_show"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1575
    :catch_0
    move-exception v0

    .line 1577
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Settings"

    const-string v4, "Problem looking up home activity!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private updateTilesList(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/dashboard/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1359
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/dashboard/DashboardCategory;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    const-string v15, "show"

    sget-object v16, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v17, "eng"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 1363
    .local v10, "showDev":Z
    const-string v14, "user"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/exsettings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/UserManager;

    .line 1365
    .local v13, "um":Landroid/os/UserManager;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    .line 1366
    .local v11, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v11, :cond_1c

    .line 1368
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/exsettings/dashboard/DashboardCategory;

    .line 1371
    .local v3, "category":Lcom/android/exsettings/dashboard/DashboardCategory;
    iget-wide v14, v3, Lcom/android/exsettings/dashboard/DashboardCategory;->id:J

    long-to-int v7, v14

    .line 1372
    .local v7, "id":I
    invoke-virtual {v3}, Lcom/android/exsettings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v14

    add-int/lit8 v8, v14, -0x1

    .line 1373
    .local v8, "n":I
    :goto_1
    if-ltz v8, :cond_1b

    .line 1375
    invoke-virtual {v3, v8}, Lcom/android/exsettings/dashboard/DashboardCategory;->getTile(I)Lcom/android/exsettings/dashboard/DashboardTile;

    move-result-object v12

    .line 1376
    .local v12, "tile":Lcom/android/exsettings/dashboard/DashboardTile;
    const/4 v9, 0x0

    .line 1377
    .local v9, "removeTile":Z
    iget-wide v14, v12, Lcom/android/exsettings/dashboard/DashboardTile;->id:J

    long-to-int v7, v14

    .line 1378
    const v14, 0x7f120309

    if-eq v7, v14, :cond_0

    const v14, 0x7f12031b

    if-ne v7, v14, :cond_4

    .line 1379
    :cond_0
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/android/exsettings/Utils;->updateTileToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Lcom/android/exsettings/dashboard/DashboardTile;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 1380
    const/4 v9, 0x1

    .line 1467
    :cond_1
    :goto_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/SettingsActivity;->SETTINGS_FOR_RESTRICTED:[I

    invoke-static {v14, v7}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v14

    if-nez v14, :cond_2

    .line 1469
    const/4 v9, 0x1

    .line 1472
    :cond_2
    if-eqz v9, :cond_3

    invoke-virtual {v3}, Lcom/android/exsettings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v14

    if-ge v8, v14, :cond_3

    .line 1473
    invoke-virtual {v3, v8}, Lcom/android/exsettings/dashboard/DashboardCategory;->removeTile(I)V

    .line 1475
    :cond_3
    add-int/lit8 v8, v8, -0x1

    .line 1476
    goto :goto_1

    .line 1382
    :cond_4
    const v14, 0x7f120302

    if-ne v7, v14, :cond_5

    .line 1384
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const-string v15, "android.hardware.wifi"

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 1385
    const/4 v9, 0x1

    goto :goto_2

    .line 1387
    :cond_5
    const v14, 0x7f120303

    if-ne v7, v14, :cond_6

    .line 1389
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const-string v15, "android.hardware.bluetooth"

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 1390
    const/4 v9, 0x1

    goto :goto_2

    .line 1392
    :cond_6
    const v14, 0x7f120307

    if-ne v7, v14, :cond_7

    .line 1393
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f100013

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    if-nez v14, :cond_1

    .line 1394
    const/4 v9, 0x1

    goto :goto_2

    .line 1397
    :cond_7
    const v14, 0x7f12031e

    if-ne v7, v14, :cond_8

    .line 1398
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f100019

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    if-nez v14, :cond_1

    .line 1399
    const/4 v9, 0x1

    goto :goto_2

    .line 1401
    :cond_8
    const v14, 0x7f120308

    if-ne v7, v14, :cond_a

    .line 1404
    invoke-static {}, Lcom/android/exsettings/Utils;->isBandwidthControlEnabled()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 1405
    :cond_9
    const/4 v9, 0x1

    goto :goto_2

    .line 1407
    :cond_a
    const v14, 0x7f120316

    if-ne v7, v14, :cond_c

    .line 1410
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/exsettings/SettingsActivity;->mBatteryPresent:Z

    if-eqz v14, :cond_b

    .line 1411
    :cond_b
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 1414
    :cond_c
    const v14, 0x7f12030d

    if-ne v7, v14, :cond_e

    .line 1415
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/exsettings/SettingsActivity;->updateHomeSettingTiles(Lcom/android/exsettings/dashboard/DashboardTile;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 1416
    :cond_d
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 1419
    :cond_e
    const v14, 0x7f120319

    if-ne v7, v14, :cond_11

    .line 1420
    const-string v14, "user"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/exsettings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/UserManager;

    invoke-virtual {v14}, Landroid/os/UserManager;->getUserCount()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_10

    const/4 v4, 0x1

    .line 1424
    .local v4, "hasMultipleUsers":Z
    :goto_3
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v14

    if-eqz v14, :cond_f

    invoke-static {}, Lcom/android/exsettings/Utils;->isMonkeyRunning()Z

    move-result v14

    if-nez v14, :cond_f

    .line 1427
    :cond_f
    const/4 v9, 0x1

    .line 1429
    goto/16 :goto_2

    .line 1420
    .end local v4    # "hasMultipleUsers":Z
    :cond_10
    const/4 v4, 0x0

    goto :goto_3

    .line 1429
    :cond_11
    const v14, 0x7f12031a

    if-ne v7, v14, :cond_14

    .line 1430
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const-string v15, "android.hardware.nfc"

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_12

    .line 1431
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 1434
    :cond_12
    invoke-static/range {p0 .. p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    .line 1435
    .local v2, "adapter":Landroid/nfc/NfcAdapter;
    if-eqz v2, :cond_13

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v14

    if-eqz v14, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const-string v15, "android.hardware.nfc.hce"

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 1438
    :cond_13
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 1441
    .end local v2    # "adapter":Landroid/nfc/NfcAdapter;
    :cond_14
    const v14, 0x7f120328

    if-ne v7, v14, :cond_16

    .line 1442
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const-string v15, "android.software.print"

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    .line 1445
    .local v5, "hasPrintingSupport":Z
    if-eqz v5, :cond_15

    .line 1446
    :cond_15
    const/4 v9, 0x1

    .line 1448
    goto/16 :goto_2

    .end local v5    # "hasPrintingSupport":Z
    :cond_16
    const v14, 0x7f120329

    if-ne v7, v14, :cond_18

    .line 1449
    if-eqz v10, :cond_17

    const-string v14, "no_debugging_features"

    invoke-virtual {v13, v14}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1451
    :cond_17
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 1453
    :cond_18
    const v14, 0x7f12030c

    if-ne v7, v14, :cond_19

    .line 1454
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f100017

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    if-nez v14, :cond_1

    .line 1455
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 1458
    :cond_19
    const v14, 0x7f120317

    if-ne v7, v14, :cond_1a

    .line 1459
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 1461
    :cond_1a
    const v14, 0x7f120325

    if-ne v7, v14, :cond_1

    .line 1462
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/SettingsActivity;->mSMQ:Lcom/android/exsettings/SmqSettings;

    invoke-virtual {v14}, Lcom/android/exsettings/SmqSettings;->isShowSmqSettings()Z

    move-result v14

    if-nez v14, :cond_1

    .line 1463
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 1366
    .end local v9    # "removeTile":Z
    .end local v12    # "tile":Lcom/android/exsettings/dashboard/DashboardTile;
    :cond_1b
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1478
    .end local v3    # "category":Lcom/android/exsettings/dashboard/DashboardCategory;
    .end local v7    # "id":I
    .end local v8    # "n":I
    :cond_1c
    invoke-direct/range {p0 .. p1}, Lcom/android/exsettings/SettingsActivity;->addExternalTiles(Ljava/util/List;)V

    .line 1479
    return-void
.end method


# virtual methods
.method public finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V
    .locals 0
    .param p1, "caller"    # Landroid/app/Fragment;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 1126
    invoke-virtual {p0, p2, p3}, Lcom/android/exsettings/SettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 1127
    invoke-virtual {p0}, Lcom/android/exsettings/SettingsActivity;->finish()V

    .line 1128
    return-void
.end method

.method public getDashboardCategories(Z)Ljava/util/List;
    .locals 1
    .param p1, "forceRefresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/dashboard/DashboardCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 538
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/exsettings/SettingsActivity;->buildDashboardCategories(Ljava/util/List;)V

    .line 541
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    .line 1001
    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 1002
    .local v4, "superIntent":Landroid/content/Intent;
    invoke-direct {p0, v4}, Lcom/android/exsettings/SettingsActivity;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 1005
    .local v3, "startingFragment":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1006
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1007
    .local v2, "modIntent":Landroid/content/Intent;
    const-string v5, ":settings:show_fragment"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1008
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1009
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1010
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .end local v0    # "args":Landroid/os/Bundle;
    .local v1, "args":Landroid/os/Bundle;
    move-object v0, v1

    .line 1014
    .end local v1    # "args":Landroid/os/Bundle;
    .restart local v0    # "args":Landroid/os/Bundle;
    :goto_0
    const-string v5, "intent"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1015
    const-string v5, ":settings:show_fragment_args"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1018
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "modIntent":Landroid/content/Intent;
    :goto_1
    return-object v2

    .line 1012
    .restart local v0    # "args":Landroid/os/Bundle;
    .restart local v2    # "modIntent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "args":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0    # "args":Landroid/os/Bundle;
    goto :goto_0

    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "modIntent":Landroid/content/Intent;
    :cond_1
    move-object v2, v4

    .line 1018
    goto :goto_1
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 1602
    iget-object v0, p0, Lcom/android/exsettings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getResultIntentData()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1685
    iget-object v0, p0, Lcom/android/exsettings/SettingsActivity;->mResultIntentData:Landroid/content/Intent;

    return-object v0
.end method

.method public getSwitchBar()Lcom/android/exsettings/widget/SwitchBar;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/exsettings/SettingsActivity;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    return-object v0
.end method

.method public hasNextButton()Z
    .locals 1

    .prologue
    .line 1598
    iget-object v0, p0, Lcom/android/exsettings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 2
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 993
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/exsettings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 994
    sget-object v1, Lcom/android/exsettings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 996
    :goto_1
    return v1

    .line 993
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 996
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public needToRevertToInitialFragment()V
    .locals 1

    .prologue
    .line 1670
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 1671
    return-void
.end method

.method public onBackStackChanged()V
    .locals 0

    .prologue
    .line 869
    invoke-direct {p0}, Lcom/android/exsettings/SettingsActivity;->setTitleFromBackStack()I

    .line 870
    return-void
.end method

.method public onClose()Z
    .locals 1

    .prologue
    .line 1632
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 578
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 579
    invoke-static {p0}, Lcom/android/exsettings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/exsettings/search/Index;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exsettings/search/Index;->update()V

    .line 580
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 23
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 661
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 664
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/SettingsActivity;->getMetaData()V

    .line 666
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    .line 667
    .local v19, "intent":Landroid/content/Intent;
    const-string v2, "settings:ui_options"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 668
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const-string v5, "settings:ui_options"

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/Window;->setUiOptions(I)V

    .line 671
    :cond_0
    new-instance v2, Lcom/android/exsettings/SmqSettings;

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/android/exsettings/SmqSettings;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/exsettings/SettingsActivity;->mSMQ:Lcom/android/exsettings/SmqSettings;

    .line 673
    const-string v2, "development"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Lcom/android/exsettings/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/exsettings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 677
    const-string v2, ":settings:show_fragment"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 679
    .local v3, "initialFragmentName":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/exsettings/SettingsActivity;->isShortCutIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static/range {v19 .. v19}, Lcom/android/exsettings/SettingsActivity;->isLikeShortCutIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ":settings:show_fragment_as_shortcut"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_1
    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/exsettings/SettingsActivity;->mIsShortcut:Z

    .line 682
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    .line 683
    .local v18, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v17

    .line 685
    .local v17, "className":Ljava/lang/String;
    const-class v2, Lcom/android/exsettings/Settings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/exsettings/SettingsActivity;->mIsShowingDashboard:Z

    .line 690
    move-object/from16 v0, p0

    instance-of v2, v0, Lcom/android/exsettings/SubSettings;

    if-nez v2, :cond_2

    const-string v2, ":settings:show_fragment_as_subsetting"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_2
    const/16 v20, 0x1

    .line 694
    .local v20, "isSubSettings":Z
    :goto_1
    if-eqz v20, :cond_3

    .line 696
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/SettingsActivity;->getThemeResId()I

    move-result v22

    .line 697
    .local v22, "themeResId":I
    const v2, 0x7f0d0075

    move/from16 v0, v22

    if-eq v0, v2, :cond_3

    const v2, 0x7f0d0077

    move/from16 v0, v22

    if-eq v0, v2, :cond_3

    .line 699
    const v2, 0x7f0d0070

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exsettings/SettingsActivity;->setTheme(I)V

    .line 703
    .end local v22    # "themeResId":I
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exsettings/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v2, :cond_c

    const v2, 0x7f0400ee

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exsettings/SettingsActivity;->setContentView(I)V

    .line 706
    const v2, 0x7f1201eb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exsettings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/exsettings/SettingsActivity;->mContent:Landroid/view/ViewGroup;

    .line 708
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 710
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exsettings/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v2, :cond_4

    .line 712
    invoke-static/range {p0 .. p0}, Lcom/android/exsettings/Utils;->isLowStorage(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 713
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exsettings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/exsettings/search/Index;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exsettings/search/Index;->update()V

    .line 719
    :cond_4
    :goto_3
    if-eqz p1, :cond_e

    .line 722
    const-string v2, ":settings:search_menu_expanded"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/exsettings/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 723
    const-string v2, ":settings:search_query"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/exsettings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 725
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/exsettings/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    .line 727
    const-string v2, ":settings:categories"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 729
    .local v16, "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/dashboard/DashboardCategory;>;"
    if-eqz v16, :cond_5

    .line 730
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 731
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 732
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/SettingsActivity;->setTitleFromBackStack()I

    .line 735
    :cond_5
    const-string v2, ":settings:show_home_as_up"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/exsettings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 736
    const-string v2, ":settings:show_search"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/exsettings/SettingsActivity;->mDisplaySearch:Z

    .line 737
    const-string v2, ":settings:home_activities_count"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/exsettings/SettingsActivity;->mHomeActivitiesCount:I

    .line 766
    .end local v16    # "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/dashboard/DashboardCategory;>;"
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/exsettings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    .line 767
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_6

    .line 768
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/exsettings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 769
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/exsettings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 771
    :cond_6
    const v2, 0x7f1201ec

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exsettings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/exsettings/widget/SwitchBar;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/exsettings/SettingsActivity;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    .line 774
    const-string v2, "extra_prefs_show_button_bar"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 776
    const v2, 0x7f1200df

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exsettings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 777
    .local v14, "buttonBar":Landroid/view/View;
    if-eqz v14, :cond_9

    .line 778
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/view/View;->setVisibility(I)V

    .line 780
    const v2, 0x7f120177

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exsettings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 781
    .local v13, "backButton":Landroid/widget/Button;
    new-instance v2, Lcom/android/exsettings/SettingsActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/exsettings/SettingsActivity$3;-><init>(Lcom/android/exsettings/SettingsActivity;)V

    invoke-virtual {v13, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 787
    const v2, 0x7f120178

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exsettings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    .line 788
    .local v21, "skipButton":Landroid/widget/Button;
    new-instance v2, Lcom/android/exsettings/SettingsActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/exsettings/SettingsActivity$4;-><init>(Lcom/android/exsettings/SettingsActivity;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 794
    const v2, 0x7f12003e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exsettings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/exsettings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    .line 795
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/exsettings/SettingsActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/exsettings/SettingsActivity$5;-><init>(Lcom/android/exsettings/SettingsActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 803
    const-string v2, "extra_prefs_set_next_text"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 804
    const-string v2, "extra_prefs_set_next_text"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 805
    .local v15, "buttonText":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 806
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 812
    .end local v15    # "buttonText":Ljava/lang/String;
    :cond_7
    :goto_5
    const-string v2, "extra_prefs_set_back_text"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 813
    const-string v2, "extra_prefs_set_back_text"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 814
    .restart local v15    # "buttonText":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 815
    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 821
    .end local v15    # "buttonText":Ljava/lang/String;
    :cond_8
    :goto_6
    const-string v2, "extra_prefs_show_skip"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 822
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 827
    .end local v13    # "backButton":Landroid/widget/Button;
    .end local v14    # "buttonBar":Landroid/view/View;
    .end local v21    # "skipButton":Landroid/widget/Button;
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/SettingsActivity;->getHomeActivitiesCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/exsettings/SettingsActivity;->mHomeActivitiesCount:I

    .line 829
    return-void

    .line 679
    .end local v17    # "className":Ljava/lang/String;
    .end local v18    # "cn":Landroid/content/ComponentName;
    .end local v20    # "isSubSettings":Z
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 690
    .restart local v17    # "className":Ljava/lang/String;
    .restart local v18    # "cn":Landroid/content/ComponentName;
    :cond_b
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 703
    .restart local v20    # "isSubSettings":Z
    :cond_c
    const v2, 0x7f0400ef

    goto/16 :goto_2

    .line 715
    :cond_d
    const-string v2, "Settings"

    const-string v5, "Cannot update the Indexer as we are running low on storage space!"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 740
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exsettings/SettingsActivity;->mIsShowingDashboard:Z

    if-nez v2, :cond_11

    .line 741
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/exsettings/SettingsActivity;->mDisplaySearch:Z

    .line 743
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exsettings/SettingsActivity;->mIsShortcut:Z

    if-eqz v2, :cond_f

    .line 744
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exsettings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 750
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/exsettings/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    .line 752
    const-string v2, ":settings:show_fragment_args"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 753
    .local v4, "initialArguments":Landroid/os/Bundle;
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/exsettings/SettingsActivity;->mInitialTitleResId:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/exsettings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/exsettings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    goto/16 :goto_4

    .line 745
    .end local v4    # "initialArguments":Landroid/os/Bundle;
    :cond_f
    if-eqz v20, :cond_10

    .line 746
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/exsettings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    goto :goto_7

    .line 748
    :cond_10
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/exsettings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    goto :goto_7

    .line 757
    :cond_11
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/exsettings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 759
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/exsettings/SettingsActivity;->mDisplaySearch:Z

    .line 760
    const v2, 0x7f0c09ea

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/exsettings/SettingsActivity;->mInitialTitleResId:I

    .line 761
    const-class v2, Lcom/android/exsettings/dashboard/DashboardSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/exsettings/SettingsActivity;->mInitialTitleResId:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exsettings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    const/4 v12, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/android/exsettings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    goto/16 :goto_4

    .line 809
    .restart local v13    # "backButton":Landroid/widget/Button;
    .restart local v14    # "buttonBar":Landroid/view/View;
    .restart local v15    # "buttonText":Ljava/lang/String;
    .restart local v21    # "skipButton":Landroid/widget/Button;
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 818
    :cond_13
    invoke-virtual {v13, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 12
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v9, 0x1

    const v11, -0x2fc3c3c4

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 593
    iget-boolean v7, p0, Lcom/android/exsettings/SettingsActivity;->mDisplaySearch:Z

    if-nez v7, :cond_0

    move v7, v8

    .line 640
    :goto_0
    return v7

    .line 597
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/SettingsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    .line 598
    .local v2, "inflater":Landroid/view/MenuInflater;
    const v7, 0x7f140004

    invoke-virtual {v2, v7, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 601
    iget-object v5, p0, Lcom/android/exsettings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 603
    .local v5, "query":Ljava/lang/String;
    const v7, 0x7f120122

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    iput-object v7, p0, Lcom/android/exsettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    .line 605
    iget-object v7, p0, Lcom/android/exsettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 606
    iget-object v7, p0, Lcom/android/exsettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v7}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/SearchView;

    iput-object v7, p0, Lcom/android/exsettings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    .line 608
    iget-object v7, p0, Lcom/android/exsettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/exsettings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    if-nez v7, :cond_2

    :cond_1
    move v7, v8

    .line 609
    goto :goto_0

    .line 612
    :cond_2
    iget-object v7, p0, Lcom/android/exsettings/SettingsActivity;->mSearchResultsFragment:Lcom/android/exsettings/dashboard/SearchResultsSummary;

    if-eqz v7, :cond_3

    .line 613
    iget-object v7, p0, Lcom/android/exsettings/SettingsActivity;->mSearchResultsFragment:Lcom/android/exsettings/dashboard/SearchResultsSummary;

    iget-object v8, p0, Lcom/android/exsettings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v7, v8}, Lcom/android/exsettings/dashboard/SearchResultsSummary;->setSearchView(Landroid/widget/SearchView;)V

    .line 616
    :cond_3
    iget-object v7, p0, Lcom/android/exsettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v7, p0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 617
    iget-object v7, p0, Lcom/android/exsettings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v7, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 618
    iget-object v7, p0, Lcom/android/exsettings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v7, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 620
    iget-boolean v7, p0, Lcom/android/exsettings/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-eqz v7, :cond_4

    .line 621
    iget-object v7, p0, Lcom/android/exsettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v7}, Landroid/view/MenuItem;->expandActionView()Z

    .line 624
    :cond_4
    iget-object v7, p0, Lcom/android/exsettings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    const v8, 0x10203d6

    invoke-virtual {v7, v8}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/AutoCompleteTextView;

    .line 625
    .local v6, "searchText":Landroid/widget/AutoCompleteTextView;
    invoke-virtual {v6, v11}, Landroid/widget/AutoCompleteTextView;->setTextColor(I)V

    .line 626
    invoke-virtual {v6, v11}, Landroid/widget/AutoCompleteTextView;->setHintTextColor(I)V

    .line 629
    invoke-virtual {p0}, Lcom/android/exsettings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "android:id/search_close_btn"

    invoke-virtual {v7, v8, v10, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 630
    .local v1, "closeImgId":I
    iget-object v7, p0, Lcom/android/exsettings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v7, v1}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 631
    .local v0, "closeImg":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/exsettings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020109

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 634
    invoke-virtual {p0}, Lcom/android/exsettings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "android:id/search_mag_icon"

    invoke-virtual {v7, v8, v10, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 635
    .local v3, "magId":I
    iget-object v7, p0, Lcom/android/exsettings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v7, v3}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 636
    .local v4, "magImage":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/exsettings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f02012b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 638
    iget-object v7, p0, Lcom/android/exsettings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v7, v5, v9}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    move v7, v9

    .line 640
    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 983
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 985
    iget-object v0, p0, Lcom/android/exsettings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/exsettings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 987
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 988
    return-void
.end method

.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1645
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/android/exsettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1646
    iget-boolean v0, p0, Lcom/android/exsettings/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-eqz v0, :cond_0

    .line 1647
    invoke-direct {p0}, Lcom/android/exsettings/SettingsActivity;->revertToInitialFragment()V

    .line 1650
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1637
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/android/exsettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1638
    invoke-direct {p0}, Lcom/android/exsettings/SettingsActivity;->switchToSearchResultsFragmentIfNeeded()V

    .line 1640
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 969
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 970
    iget-boolean v0, p0, Lcom/android/exsettings/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v0, :cond_0

    .line 971
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 973
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 975
    :try_start_0
    iget-object v0, p0, Lcom/android/exsettings/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/android/exsettings/search/DynamicIndexableContentMonitor;

    invoke-virtual {v0}, Lcom/android/exsettings/search/DynamicIndexableContentMonitor;->unregister()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 979
    :goto_0
    return-void

    .line 976
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "caller"    # Landroid/preference/PreferenceFragment;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 547
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    .line 548
    .local v3, "titleRes":I
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/exsettings/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 549
    const v3, 0x7f0c039a

    .line 558
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 560
    const/4 v0, 0x1

    return v0

    .line 550
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/exsettings/OwnerInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 553
    const v3, 0x7f0c017d

    goto :goto_0

    .line 555
    :cond_2
    const v3, 0x7f0c017b

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 565
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 1623
    iput-object p1, p0, Lcom/android/exsettings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 1624
    iget-object v0, p0, Lcom/android/exsettings/SettingsActivity;->mSearchResultsFragment:Lcom/android/exsettings/dashboard/SearchResultsSummary;

    if-nez v0, :cond_0

    .line 1625
    const/4 v0, 0x0

    .line 1627
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/SettingsActivity;->mSearchResultsFragment:Lcom/android/exsettings/dashboard/SearchResultsSummary;

    invoke-virtual {v0, p1}, Lcom/android/exsettings/dashboard/SearchResultsSummary;->onQueryTextChange(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 1616
    invoke-direct {p0}, Lcom/android/exsettings/SettingsActivity;->switchToSearchResultsFragmentIfNeeded()V

    .line 1617
    iput-object p1, p0, Lcom/android/exsettings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 1618
    iget-object v0, p0, Lcom/android/exsettings/SettingsActivity;->mSearchResultsFragment:Lcom/android/exsettings/dashboard/SearchResultsSummary;

    invoke-virtual {v0, p1}, Lcom/android/exsettings/dashboard/SearchResultsSummary;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 932
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 933
    iget-boolean v1, p0, Lcom/android/exsettings/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v1, :cond_0

    .line 934
    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 937
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/SettingsActivity;->mSMQ:Lcom/android/exsettings/SmqSettings;

    invoke-virtual {v1}, Lcom/android/exsettings/SmqSettings;->onResume()V

    .line 939
    invoke-direct {p0}, Lcom/android/exsettings/SettingsActivity;->getHomeActivitiesCount()I

    move-result v0

    .line 940
    .local v0, "newHomeActivityCount":I
    iget v1, p0, Lcom/android/exsettings/SettingsActivity;->mHomeActivitiesCount:I

    if-eq v0, v1, :cond_1

    .line 941
    iput v0, p0, Lcom/android/exsettings/SettingsActivity;->mHomeActivitiesCount:I

    .line 942
    invoke-direct {p0, v2}, Lcom/android/exsettings/SettingsActivity;->invalidateCategories(Z)V

    .line 945
    :cond_1
    new-instance v1, Lcom/android/exsettings/SettingsActivity$6;

    invoke-direct {v1, p0}, Lcom/android/exsettings/SettingsActivity$6;-><init>(Lcom/android/exsettings/SettingsActivity;)V

    iput-object v1, p0, Lcom/android/exsettings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 951
    iget-object v1, p0, Lcom/android/exsettings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/exsettings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 954
    iget-object v1, p0, Lcom/android/exsettings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/exsettings/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 957
    :try_start_0
    iget-object v1, p0, Lcom/android/exsettings/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/android/exsettings/search/DynamicIndexableContentMonitor;

    invoke-virtual {v1, p0}, Lcom/android/exsettings/search/DynamicIndexableContentMonitor;->register(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 962
    :goto_0
    iget-boolean v1, p0, Lcom/android/exsettings/SettingsActivity;->mDisplaySearch:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/exsettings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 963
    iget-object v1, p0, Lcom/android/exsettings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/exsettings/SettingsActivity;->onQueryTextSubmit(Ljava/lang/String;)Z

    .line 965
    :cond_2
    return-void

    .line 958
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 905
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 907
    iget-object v2, p0, Lcom/android/exsettings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 908
    const-string v2, ":settings:categories"

    iget-object v3, p0, Lcom/android/exsettings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 911
    :cond_0
    const-string v2, ":settings:show_home_as_up"

    iget-boolean v3, p0, Lcom/android/exsettings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 912
    const-string v2, ":settings:show_search"

    iget-boolean v3, p0, Lcom/android/exsettings/SettingsActivity;->mDisplaySearch:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 914
    iget-boolean v2, p0, Lcom/android/exsettings/SettingsActivity;->mDisplaySearch:Z

    if-eqz v2, :cond_1

    .line 920
    iget-object v2, p0, Lcom/android/exsettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/exsettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 921
    .local v0, "isExpanded":Z
    :goto_0
    const-string v2, ":settings:search_menu_expanded"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 923
    iget-object v2, p0, Lcom/android/exsettings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/exsettings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 924
    .local v1, "query":Ljava/lang/String;
    :goto_1
    const-string v2, ":settings:search_query"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    .end local v0    # "isExpanded":Z
    .end local v1    # "query":Ljava/lang/String;
    :cond_1
    const-string v2, ":settings:home_activities_count"

    iget v3, p0, Lcom/android/exsettings/SettingsActivity;->mHomeActivitiesCount:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 928
    return-void

    .line 920
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 923
    .restart local v0    # "isExpanded":Z
    :cond_3
    const-string v1, ""

    goto :goto_1
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 584
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 586
    iget-boolean v0, p0, Lcom/android/exsettings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    if-eqz v0, :cond_0

    .line 587
    invoke-direct {p0}, Lcom/android/exsettings/SettingsActivity;->revertToInitialFragment()V

    .line 589
    :cond_0
    return-void
.end method

.method public setResultIntentData(Landroid/content/Intent;)V
    .locals 0
    .param p1, "resultIntentData"    # Landroid/content/Intent;

    .prologue
    .line 1689
    iput-object p1, p0, Lcom/android/exsettings/SettingsActivity;->mResultIntentData:Landroid/content/Intent;

    .line 1690
    return-void
.end method

.method public setSearView(Landroid/widget/LinearLayout;)V
    .locals 1
    .param p1, "searchView"    # Landroid/widget/LinearLayout;

    .prologue
    .line 1695
    if-eqz p1, :cond_0

    .line 1696
    new-instance v0, Lcom/android/exsettings/SettingsActivity$7;

    invoke-direct {v0, p0}, Lcom/android/exsettings/SettingsActivity$7;-><init>(Lcom/android/exsettings/SettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1707
    :cond_0
    return-void
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "targetIntent"    # Landroid/content/Intent;

    .prologue
    .line 1607
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/exsettings/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-super {p0, v0}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public startPreferenceFragment(Landroid/app/Fragment;Z)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "push"    # Z

    .prologue
    .line 1138
    invoke-virtual {p0}, Lcom/android/exsettings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1139
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    const v1, 0x7f1201eb

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1140
    if-eqz p2, :cond_0

    .line 1141
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1142
    const-string v1, ":settings:prefs"

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1146
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1147
    return-void

    .line 1144
    :cond_0
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 8
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "resultTo"    # Landroid/app/Fragment;
    .param p6, "resultRequestCode"    # I

    .prologue
    .line 1062
    const/4 v6, 0x0

    .line 1063
    .local v6, "title":Ljava/lang/String;
    if-gez p3, :cond_0

    .line 1064
    if-eqz p4, :cond_1

    .line 1065
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1071
    :cond_0
    :goto_0
    iget-boolean v7, p0, Lcom/android/exsettings/SettingsActivity;->mIsShortcut:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move v5, p3

    invoke-static/range {v0 .. v7}, Lcom/android/exsettings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;Z)V

    .line 1073
    return-void

    .line 1068
    :cond_1
    const-string v6, ""

    goto :goto_0
.end method

.method public startPreferencePanelAsUser(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/os/UserHandle;)V
    .locals 7
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 1099
    invoke-virtual {p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1100
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1114
    :goto_0
    return-void

    .line 1102
    :cond_0
    const/4 v4, 0x0

    .line 1103
    .local v4, "title":Ljava/lang/String;
    if-gez p3, :cond_1

    .line 1104
    if-eqz p4, :cond_2

    .line 1105
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1111
    :cond_1
    :goto_1
    iget-boolean v5, p0, Lcom/android/exsettings/SettingsActivity;->mIsShortcut:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/exsettings/Utils;->startWithFragmentAsUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;ZLandroid/os/UserHandle;)V

    goto :goto_0

    .line 1108
    :cond_2
    const-string v4, ""

    goto :goto_1
.end method
