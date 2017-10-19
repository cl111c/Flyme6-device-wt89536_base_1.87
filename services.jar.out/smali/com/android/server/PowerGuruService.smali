.class Lcom/android/server/PowerGuruService;
.super Landroid/app/IPowerGuru$Stub;
.source "PowerGuruService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PowerGuruService$DelayedDiskWrite;,
        Lcom/android/server/PowerGuruService$UninstallReceiver;,
        Lcom/android/server/PowerGuruService$InternalHandler;,
        Lcom/android/server/PowerGuruService$AlarmInfo;
    }
.end annotation


# static fields
.field private static final ACTION_VPN_OFF:Ljava/lang/String; = "android.intent.action.VPN_OFF"

.field private static final ACTION_VPN_ON:Ljava/lang/String; = "android.intent.action.VPN_ON"

.field private static final DEFAULT_ALARM_DETECT_DURATION:I = 0x36ee80

.field private static final DEFAULT_ALARM_REPEAT_INTERVAL_MINS_LEVEL1:I = 0x78

.field private static final DEFAULT_ALARM_REPEAT_INTERVAL_MINS_LEVEL2:I = 0x5a

.field private static final HEARTBEAT_ALARM_LIST_UPDATE:I = 0x5

.field private static LEVEL1_INTERVAL_PROPERTY_KEY:Ljava/lang/String; = null

.field private static LEVEL2_INTERVAL_PROPERTY_KEY:Ljava/lang/String; = null

.field private static final LOAD_DATA:I = 0x0

.field private static final NEW_ALARM:I = 0x1

.field private static final SAVE_STUDY_HEARTBEAT_LIST_TO_DISK:I = 0x9

.field private static final SAVE_WHITE_LIST_TO_DISK:I = 0x8

.field private static final SCREEN_OFF:I = 0x2

.field private static final SCREEN_ON:I = 0x3

.field private static final SUSPECTED_HEARTBEAT_ALARM_CHECK:I = 0x4

.field private static final TAG:Ljava/lang/String; = "PowerGuruService"

.field private static final UPDATE_DATA_ON_PACKAGES_CHANGED:I = 0xa

.field private static final VPN_NETWORK_CONNECTION_CHANGE:I = 0x7

.field private static final WIFI_NETWORK_CONNECTION_CHANGE:I = 0x6

.field private static final XML_ALARMINFO_ACT_TAG:Ljava/lang/String; = "action_name"

.field private static final XML_ALARMINFO_AVAILABLE_TAG:Ljava/lang/String; = "isAvail"

.field private static final XML_ALARMINFO_BODY_TAG:Ljava/lang/String; = "alarmInfo_body"

.field private static final XML_ALARMINFO_CPN_TAG:Ljava/lang/String; = "conponent"

.field private static final XML_ALARMINFO_FILE_TAG:Ljava/lang/String; = "alarm_info_list"

.field private static final XML_ALARMINFO_GMS_TAG:Ljava/lang/String; = "isGms"

.field private static final XML_ALARMINFO_MERGE_TAG:Ljava/lang/String; = "merge"

.field private static final XML_ALARMINFO_PKG_TAG:Ljava/lang/String; = "package_name"

.field private static final XML_ALARMINFO_TYPE_TAG:Ljava/lang/String; = "alarm_type"

.field private static final XML_APP_LIST_FILE_TAG:Ljava/lang/String; = "app_list"

.field private static final XML_APP_LIST_PKG_BODY_TAG:Ljava/lang/String; = "packageItem"

.field private static final XML_APP_LIST_PKG_NAME_TAG:Ljava/lang/String; = "pkg_name"


# instance fields
.field public final DBG:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAlarmRepeatIntervalMsLevel1:J

.field private mAlarmRepeatIntervalMsLevel2:J

.field private mBlackAppFile:Landroid/util/AtomicFile;

.field private mBlackAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCandicateWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDelayedDiskWrite:Lcom/android/server/PowerGuruService$DelayedDiskWrite;

.field private final mGMSAppList:[Ljava/lang/String;

.field private mHandler:Lcom/android/server/PowerGuruService$InternalHandler;

.field private mHasVpn:Z

.field private mHeartbeatAlarmList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/PowerGuruService$AlarmInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeartbeatFetureStrings:[Ljava/lang/String;

.field private mHeartbeatListLock:Ljava/lang/Object;

.field private mHeartbeatListUpdate:Z

.field private mHistoryAlarmList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/PowerGuruService$AlarmInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPresetHeartBeatRecordFile:Landroid/util/AtomicFile;

.field private mPresetHeartbeatList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/PowerGuruAlarmInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRootDataDir:Ljava/io/File;

.field private mSavedHeartbeatList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/PowerGuruAlarmInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOff:Z

.field private mStudiedHeartBeatRecordFile:Landroid/util/AtomicFile;

.field private mSuspectedHeartbeatAlarmList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/PowerGuruService$AlarmInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWhiteAppFile:Landroid/util/AtomicFile;

.field private mWhiteAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 173
    const-string v0, "heartbeat.interval.level1"

    sput-object v0, Lcom/android/server/PowerGuruService;->LEVEL1_INTERVAL_PROPERTY_KEY:Ljava/lang/String;

    .line 174
    const-string v0, "heartbeat.interval.level2"

    sput-object v0, Lcom/android/server/PowerGuruService;->LEVEL2_INTERVAL_PROPERTY_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 344
    invoke-direct {p0}, Landroid/app/IPowerGuru$Stub;-><init>()V

    .line 105
    iput-boolean v8, p0, Lcom/android/server/PowerGuruService;->DBG:Z

    .line 141
    iput-object v6, p0, Lcom/android/server/PowerGuruService;->mHandler:Lcom/android/server/PowerGuruService$InternalHandler;

    .line 145
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/PowerGuruService;->mHeartbeatListLock:Ljava/lang/Object;

    .line 148
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/PowerGuruService;->mHistoryAlarmList:Ljava/util/List;

    .line 152
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/PowerGuruService;->mHeartbeatAlarmList:Ljava/util/List;

    .line 154
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/PowerGuruService;->mSuspectedHeartbeatAlarmList:Ljava/util/List;

    .line 157
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/PowerGuruService;->mWhiteAppList:Ljava/util/List;

    .line 160
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/PowerGuruService;->mPresetHeartbeatList:Ljava/util/List;

    .line 164
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/PowerGuruService;->mSavedHeartbeatList:Ljava/util/List;

    .line 166
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/PowerGuruService;->mCandicateWhiteList:Ljava/util/List;

    .line 196
    iput-boolean v8, p0, Lcom/android/server/PowerGuruService;->mHasVpn:Z

    .line 197
    iput-boolean v8, p0, Lcom/android/server/PowerGuruService;->mWifiConnected:Z

    .line 198
    iput-boolean v8, p0, Lcom/android/server/PowerGuruService;->mScreenOff:Z

    .line 199
    iput-boolean v8, p0, Lcom/android/server/PowerGuruService;->mHeartbeatListUpdate:Z

    .line 202
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/PowerGuruService;->mBlackAppList:Ljava/util/List;

    .line 204
    const/16 v3, 0x23

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "com.google.android.gms"

    aput-object v4, v3, v8

    const-string v4, "com.google.android.talk"

    aput-object v4, v3, v7

    const-string v4, "com.google.android.apps.plus"

    aput-object v4, v3, v9

    const-string v4, "com.android.vending"

    aput-object v4, v3, v10

    const/4 v4, 0x4

    const-string v5, "com.google.android.googlequicksearchbox"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "com.google.android.apps.docs"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "com.google.android.apps.magazines"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "com.google.android.videos"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "com.google.android.music"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "com.google.android.gm"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "com.google.android.youtube"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "com.google.android.apps.maps"

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string v5, "com.google.android.play.games"

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string v5, "com.android.chrome"

    aput-object v5, v3, v4

    const/16 v4, 0xe

    const-string v5, "com.google.android.partnersetup"

    aput-object v5, v3, v4

    const/16 v4, 0xf

    const-string v5, "com.google.android.gms.drive"

    aput-object v5, v3, v4

    const/16 v4, 0x10

    const-string v5, "com.google.process.gapps"

    aput-object v5, v3, v4

    const/16 v4, 0x11

    const-string v5, "com.google.android.apps.books"

    aput-object v5, v3, v4

    const/16 v4, 0x12

    const-string v5, "com.google.android.apps.translate"

    aput-object v5, v3, v4

    const/16 v4, 0x13

    const-string v5, "com.google.earth"

    aput-object v5, v3, v4

    const/16 v4, 0x14

    const-string v5, "com.google.android.calendar"

    aput-object v5, v3, v4

    const/16 v4, 0x15

    const-string v5, "com.google.android.deskclock"

    aput-object v5, v3, v4

    const/16 v4, 0x16

    const-string v5, "com.google.android.apps.photos"

    aput-object v5, v3, v4

    const/16 v4, 0x17

    const-string v5, "com.google.android.feedback"

    aput-object v5, v3, v4

    const/16 v4, 0x18

    const-string v5, "com.google.android.onetimeinitializer"

    aput-object v5, v3, v4

    const/16 v4, 0x19

    const-string v5, "com.google.android.webview"

    aput-object v5, v3, v4

    const/16 v4, 0x1a

    const-string v5, "com.google.android.androidforwork"

    aput-object v5, v3, v4

    const/16 v4, 0x1b

    const-string v5, "com.google.android.setupwizard"

    aput-object v5, v3, v4

    const/16 v4, 0x1c

    const-string v5, "com.facebook.katana"

    aput-object v5, v3, v4

    const/16 v4, 0x1d

    const-string v5, "com.google.android.syncadapters.contacts"

    aput-object v5, v3, v4

    const/16 v4, 0x1e

    const-string v5, "com.google.android.backuptransport"

    aput-object v5, v3, v4

    const/16 v4, 0x1f

    const-string v5, "com.google.android.configupdater"

    aput-object v5, v3, v4

    const/16 v4, 0x20

    const-string v5, "com.android.partnerbrowsercustomizations.example"

    aput-object v5, v3, v4

    const/16 v4, 0x21

    const-string v5, "com.google.android.tts"

    aput-object v5, v3, v4

    const/16 v4, 0x22

    const-string v5, "com.google.android.gsf.login"

    aput-object v5, v3, v4

    iput-object v3, p0, Lcom/android/server/PowerGuruService;->mGMSAppList:[Ljava/lang/String;

    .line 244
    new-array v3, v10, [Ljava/lang/String;

    const-string v4, "KEEP_ALIVE"

    aput-object v4, v3, v8

    const-string v4, "KEEPALIVE"

    aput-object v4, v3, v7

    const-string v4, "PING"

    aput-object v4, v3, v9

    iput-object v3, p0, Lcom/android/server/PowerGuruService;->mHeartbeatFetureStrings:[Ljava/lang/String;

    .line 251
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/PowerGuruService;->mRootDataDir:Ljava/io/File;

    .line 252
    iput-object v6, p0, Lcom/android/server/PowerGuruService;->mPresetHeartBeatRecordFile:Landroid/util/AtomicFile;

    .line 253
    iput-object v6, p0, Lcom/android/server/PowerGuruService;->mStudiedHeartBeatRecordFile:Landroid/util/AtomicFile;

    .line 254
    iput-object v6, p0, Lcom/android/server/PowerGuruService;->mWhiteAppFile:Landroid/util/AtomicFile;

    .line 255
    iput-object v6, p0, Lcom/android/server/PowerGuruService;->mBlackAppFile:Landroid/util/AtomicFile;

    .line 258
    iput-object v6, p0, Lcom/android/server/PowerGuruService;->mDelayedDiskWrite:Lcom/android/server/PowerGuruService$DelayedDiskWrite;

    .line 345
    iput-object p1, p0, Lcom/android/server/PowerGuruService;->mContext:Landroid/content/Context;

    .line 347
    new-instance v0, Landroid/os/HandlerThread;

    const-string v3, "PowerGuruService"

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 348
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 349
    new-instance v3, Lcom/android/server/PowerGuruService$InternalHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/PowerGuruService$InternalHandler;-><init>(Lcom/android/server/PowerGuruService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/PowerGuruService;->mHandler:Lcom/android/server/PowerGuruService$InternalHandler;

    .line 353
    sget-object v3, Lcom/android/server/PowerGuruService;->LEVEL1_INTERVAL_PROPERTY_KEY:Ljava/lang/String;

    const/16 v4, 0x78

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 354
    .local v1, "timeMinsLevel1":I
    sget-object v3, Lcom/android/server/PowerGuruService;->LEVEL2_INTERVAL_PROPERTY_KEY:Ljava/lang/String;

    const/16 v4, 0x5a

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 356
    .local v2, "timeMinsLevel2":I
    mul-int/lit8 v3, v1, 0x3c

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    iput-wide v4, p0, Lcom/android/server/PowerGuruService;->mAlarmRepeatIntervalMsLevel1:J

    .line 357
    mul-int/lit8 v3, v2, 0x3c

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    iput-wide v4, p0, Lcom/android/server/PowerGuruService;->mAlarmRepeatIntervalMsLevel2:J

    .line 359
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Level1  alarm repeat interval: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/PowerGuruService;->mAlarmRepeatIntervalMsLevel1:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Level2 alarm repeat interval: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/PowerGuruService;->mAlarmRepeatIntervalMsLevel2:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V

    .line 362
    invoke-direct {p0}, Lcom/android/server/PowerGuruService;->registerForBroadcasts()V

    .line 368
    new-instance v3, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/PowerGuruService;->mRootDataDir:Ljava/io/File;

    const-string v7, "system"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v6, "pwrGuruPreset.xml"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/android/server/PowerGuruService;->mPresetHeartBeatRecordFile:Landroid/util/AtomicFile;

    .line 369
    new-instance v3, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/PowerGuruService;->mRootDataDir:Ljava/io/File;

    const-string v7, "system"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v6, "pwrGuruStudied.xml"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/android/server/PowerGuruService;->mStudiedHeartBeatRecordFile:Landroid/util/AtomicFile;

    .line 370
    new-instance v3, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/PowerGuruService;->mRootDataDir:Ljava/io/File;

    const-string v7, "system"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v6, "whiteAppList.xml"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/android/server/PowerGuruService;->mWhiteAppFile:Landroid/util/AtomicFile;

    .line 371
    new-instance v3, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    const-string v5, "/system/etc/blackAppList.xml"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/android/server/PowerGuruService;->mBlackAppFile:Landroid/util/AtomicFile;

    .line 373
    iget-object v3, p0, Lcom/android/server/PowerGuruService;->mHandler:Lcom/android/server/PowerGuruService$InternalHandler;

    iget-object v4, p0, Lcom/android/server/PowerGuruService;->mHandler:Lcom/android/server/PowerGuruService$InternalHandler;

    invoke-virtual {v4, v8}, Lcom/android/server/PowerGuruService$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/PowerGuruService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 375
    new-instance v3, Lcom/android/server/PowerGuruService$DelayedDiskWrite;

    invoke-direct {v3, p0}, Lcom/android/server/PowerGuruService$DelayedDiskWrite;-><init>(Lcom/android/server/PowerGuruService;)V

    iput-object v3, p0, Lcom/android/server/PowerGuruService;->mDelayedDiskWrite:Lcom/android/server/PowerGuruService$DelayedDiskWrite;

    .line 377
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/PowerGuruService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PowerGuruService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/PowerGuruService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PowerGuruService;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/server/PowerGuruService;->initData()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/PowerGuruService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PowerGuruService;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/server/PowerGuruService;->saveWhileListToDisk()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/PowerGuruService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PowerGuruService;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/server/PowerGuruService;->saveStudyHeartbeatListToDisk()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/PowerGuruService;Ljava/util/List;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PowerGuruService;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # I

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/server/PowerGuruService;->updateDataOnPackagesChanged(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/PowerGuruService;)Lcom/android/server/PowerGuruService$InternalHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PowerGuruService;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/server/PowerGuruService;->mHandler:Lcom/android/server/PowerGuruService$InternalHandler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/PowerGuruService;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PowerGuruService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/server/PowerGuruService;->handleBroadcastEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/PowerGuruService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PowerGuruService;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/server/PowerGuruService;->mSavedHeartbeatList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/PowerGuruService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PowerGuruService;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/server/PowerGuruService;->mWhiteAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/PowerGuruService;)Landroid/util/AtomicFile;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PowerGuruService;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/server/PowerGuruService;->mStudiedHeartBeatRecordFile:Landroid/util/AtomicFile;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/PowerGuruService;Lcom/android/server/PowerGuruService$AlarmInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PowerGuruService;
    .param p1, "x1"    # Lcom/android/server/PowerGuruService$AlarmInfo;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/PowerGuruService;->processInputAlarm(Lcom/android/server/PowerGuruService$AlarmInfo;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/PowerGuruService;Landroid/util/AtomicFile;Ljava/util/List;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PowerGuruService;
    .param p1, "x1"    # Landroid/util/AtomicFile;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/server/PowerGuruService;->writeAlarmInfoToFile(Landroid/util/AtomicFile;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/PowerGuruService;)Landroid/util/AtomicFile;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PowerGuruService;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/server/PowerGuruService;->mWhiteAppFile:Landroid/util/AtomicFile;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/PowerGuruService;Landroid/util/AtomicFile;Ljava/util/List;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PowerGuruService;
    .param p1, "x1"    # Landroid/util/AtomicFile;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/server/PowerGuruService;->writeAppListToFile(Landroid/util/AtomicFile;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/PowerGuruService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PowerGuruService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/PowerGuruService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PowerGuruService;

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/server/PowerGuruService;->mScreenOff:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/PowerGuruService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PowerGuruService;
    .param p1, "x1"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/server/PowerGuruService;->mScreenOff:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/PowerGuruService;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PowerGuruService;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/server/PowerGuruService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/PowerGuruService;Landroid/app/AlarmManager;)Landroid/app/AlarmManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PowerGuruService;
    .param p1, "x1"    # Landroid/app/AlarmManager;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/server/PowerGuruService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/PowerGuruService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PowerGuruService;

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/server/PowerGuruService;->mHeartbeatListUpdate:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/PowerGuruService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PowerGuruService;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/server/PowerGuruService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/PowerGuruService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PowerGuruService;

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/server/PowerGuruService;->mWifiConnected:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/PowerGuruService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PowerGuruService;
    .param p1, "x1"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/server/PowerGuruService;->mWifiConnected:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/PowerGuruService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PowerGuruService;

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/server/PowerGuruService;->mHasVpn:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/PowerGuruService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PowerGuruService;
    .param p1, "x1"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/server/PowerGuruService;->mHasVpn:Z

    return p1
.end method

.method private addStringListItemByPkgList(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1667
    .local p1, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "targetList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v1, p1

    .line 1668
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v3, p2

    .line 1670
    .local v3, "tarList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1671
    .local v2, "str":Ljava/lang/String;
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1673
    .end local v2    # "str":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private addToHeartbeatAlarmList(Lcom/android/server/PowerGuruService$AlarmInfo;ZZ)Z
    .locals 13
    .param p1, "alarm"    # Lcom/android/server/PowerGuruService$AlarmInfo;
    .param p2, "isRepeat"    # Z
    .param p3, "isFromSaved"    # Z

    .prologue
    .line 703
    const/4 v10, 0x1

    .line 704
    .local v10, "isNewAlarm":Z
    const/4 v9, 0x0

    .line 705
    .local v9, "isAlarmUpdate":Z
    iget-object v11, p0, Lcom/android/server/PowerGuruService;->mHeartbeatListLock:Ljava/lang/Object;

    monitor-enter v11

    .line 707
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerGuruService;->mHeartbeatAlarmList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/PowerGuruService$AlarmInfo;

    .line 708
    .local v7, "a":Lcom/android/server/PowerGuruService$AlarmInfo;
    invoke-direct {p0, v7, p1, p2}, Lcom/android/server/PowerGuruService;->isAlarmMatched(Lcom/android/server/PowerGuruService$AlarmInfo;Lcom/android/server/PowerGuruService$AlarmInfo;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 709
    const-string v0, "Already added to Heartbeat Alarm List"

    invoke-direct {p0, v0}, Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V

    .line 710
    const/4 v10, 0x0

    .line 713
    iget-boolean v0, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->isFromGms:Z

    if-eqz v0, :cond_1

    .line 714
    iget-boolean v0, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->isAvailable:Z

    iget-boolean v1, v7, Lcom/android/server/PowerGuruService$AlarmInfo;->isAvailable:Z

    if-eq v0, v1, :cond_1

    .line 715
    const-string v0, "Alarm from GMS update in Heartbeat Alarm List"

    invoke-direct {p0, v0}, Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V

    .line 716
    iget-boolean v0, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->isAvailable:Z

    iput-boolean v0, v7, Lcom/android/server/PowerGuruService$AlarmInfo;->isAvailable:Z

    .line 717
    const/4 v9, 0x1

    .line 720
    :cond_1
    iget-wide v0, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->repeatInterval:J

    iput-wide v0, v7, Lcom/android/server/PowerGuruService$AlarmInfo;->repeatInterval:J

    .line 725
    .end local v7    # "a":Lcom/android/server/PowerGuruService$AlarmInfo;
    :cond_2
    if-eqz v10, :cond_3

    .line 726
    const-string v0, "New alarm add to Heartbeat Alarm List"

    invoke-direct {p0, v0}, Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V

    .line 728
    iget-object v0, p0, Lcom/android/server/PowerGuruService;->mHeartbeatAlarmList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 730
    iget-boolean v0, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->isFromGms:Z

    if-nez v0, :cond_3

    if-nez p3, :cond_3

    .line 732
    invoke-direct {p0, p1}, Lcom/android/server/PowerGuruService;->isSavedHeartbeatAlarm(Lcom/android/server/PowerGuruService$AlarmInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 733
    iget-object v12, p0, Lcom/android/server/PowerGuruService;->mSavedHeartbeatList:Ljava/util/List;

    new-instance v0, Landroid/app/PowerGuruAlarmInfo;

    iget-object v1, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->action:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->componentName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->type:I

    iget-boolean v5, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->isFromGms:Z

    iget-boolean v6, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->isAvailable:Z

    invoke-direct/range {v0 .. v6}, Landroid/app/PowerGuruAlarmInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 737
    iget-object v0, p0, Lcom/android/server/PowerGuruService;->mHandler:Lcom/android/server/PowerGuruService$InternalHandler;

    iget-object v1, p0, Lcom/android/server/PowerGuruService;->mHandler:Lcom/android/server/PowerGuruService$InternalHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/android/server/PowerGuruService$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/PowerGuruService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 743
    :cond_3
    if-nez v10, :cond_4

    if-eqz v9, :cond_5

    .line 745
    :cond_4
    const-string v0, "New alarm add to Heartbeat Alarm List, mHeartbeatListUpdate = true"

    invoke-direct {p0, v0}, Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V

    .line 746
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PowerGuruService;->mHeartbeatListUpdate:Z

    .line 747
    iget-object v0, p0, Lcom/android/server/PowerGuruService;->mHandler:Lcom/android/server/PowerGuruService$InternalHandler;

    iget-object v1, p0, Lcom/android/server/PowerGuruService;->mHandler:Lcom/android/server/PowerGuruService$InternalHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/PowerGuruService$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/PowerGuruService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 752
    :cond_5
    const-string v0, "current Hearbeat Alarms:"

    invoke-direct {p0, v0}, Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V

    .line 753
    iget-object v0, p0, Lcom/android/server/PowerGuruService;->mHeartbeatAlarmList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/PowerGuruService$AlarmInfo;

    .line 754
    .restart local v7    # "a":Lcom/android/server/PowerGuruService$AlarmInfo;
    invoke-direct {p0, v7}, Lcom/android/server/PowerGuruService;->dumpAlarm(Lcom/android/server/PowerGuruService$AlarmInfo;)V

    goto :goto_0

    .line 757
    .end local v7    # "a":Lcom/android/server/PowerGuruService$AlarmInfo;
    .end local v8    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_6
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 759
    const/4 v0, 0x1

    return v0
.end method

.method private containHeartbeatAlarmFeature(Lcom/android/server/PowerGuruService$AlarmInfo;)Z
    .locals 5
    .param p1, "alarm"    # Lcom/android/server/PowerGuruService$AlarmInfo;

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/server/PowerGuruService;->mHeartbeatFetureStrings:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 692
    .local v3, "s":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->action:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->action:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 693
    const/4 v4, 0x1

    .line 697
    .end local v3    # "s":Ljava/lang/String;
    :goto_1
    return v4

    .line 691
    .restart local v3    # "s":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 697
    .end local v3    # "s":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private dbgLogd(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1804
    return-void
.end method

.method private detectHeartbeatAlarm(Lcom/android/server/PowerGuruService$AlarmInfo;)Z
    .locals 6
    .param p1, "alarm"    # Lcom/android/server/PowerGuruService$AlarmInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 941
    iget-wide v2, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->repeatInterval:J

    iget-wide v4, p0, Lcom/android/server/PowerGuruService;->mAlarmRepeatIntervalMsLevel1:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 942
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alarm interval = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->repeatInterval:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/PowerGuruService;->mAlarmRepeatIntervalMsLevel1:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(ms) return!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V

    .line 956
    :goto_0
    return v0

    .line 946
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/PowerGuruService;->containHeartbeatAlarmFeature(Lcom/android/server/PowerGuruService$AlarmInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " alarm action = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->action:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " contain Heartbeat alarm feature, it is a heartbeat alarm!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V

    move v0, v1

    .line 948
    goto :goto_0

    .line 951
    :cond_1
    iget-wide v2, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->repeatInterval:J

    iget-wide v4, p0, Lcom/android/server/PowerGuruService;->mAlarmRepeatIntervalMsLevel2:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 953
    invoke-direct {p0, p1}, Lcom/android/server/PowerGuruService;->processSuspectedHeartbeatAlarm(Lcom/android/server/PowerGuruService$AlarmInfo;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 956
    goto :goto_0
.end method

.method private dumpAlarm(Lcom/android/server/PowerGuruService$AlarmInfo;)V
    .locals 6
    .param p1, "alarm"    # Lcom/android/server/PowerGuruService$AlarmInfo;

    .prologue
    .line 555
    const-string v2, "yyyy-MM-dd HH:mm:ss"

    iget-wide v4, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->when:J

    invoke-static {v2, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    .line 556
    .local v1, "timeStr":Ljava/lang/CharSequence;
    const-string v2, "yyyy-MM-dd HH:mm:ss"

    iget-wide v4, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->firstSetTime:J

    invoke-static {v2, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 557
    .local v0, "firstTimeStr":Ljava/lang/CharSequence;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alarm info: packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->action:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Component = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->componentName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", when = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->when:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", interval = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->repeatInterval:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", setCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->setCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", firstSetTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->firstSetTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isRepeat = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->isRepeat:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isFromGMS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->isFromGms:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isAvailable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->isAvailable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V

    .line 571
    return-void
.end method

.method private dumpStringList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1818
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "begin dumping String List:"

    invoke-direct {p0, v2}, Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V

    .line 1819
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1820
    .local v1, "str":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1822
    .end local v1    # "str":Ljava/lang/String;
    :cond_0
    const-string v2, "end dumping String List:"

    invoke-direct {p0, v2}, Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V

    .line 1823
    return-void
.end method

.method private getThirdPartyAppsInfoList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1389
    .local p1, "pkglist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1390
    .local v2, "retList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1391
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 1392
    .local v1, "pak":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1390
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1394
    .end local v1    # "pak":Landroid/content/pm/PackageInfo;
    :cond_0
    return-object v2
.end method

.method private getThirdPartyAppsList(I)Ljava/util/List;
    .locals 5
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1374
    iget-object v3, p0, Lcom/android/server/PowerGuruService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 1376
    .local v2, "packgeNames":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1377
    .local v1, "packageInfos":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageInfo;>;"
    const/4 v0, 0x0

    .line 1378
    .local v0, "info":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1379
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 1380
    .restart local v0    # "info":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v4, "/system"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1382
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1385
    :cond_1
    return-object v2
.end method

.method private handleBroadcastEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x7

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1057
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1059
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1060
    iget-object v3, p0, Lcom/android/server/PowerGuruService;->mHandler:Lcom/android/server/PowerGuruService$InternalHandler;

    iget-object v4, p0, Lcom/android/server/PowerGuruService;->mHandler:Lcom/android/server/PowerGuruService$InternalHandler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/server/PowerGuruService$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/PowerGuruService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1075
    :cond_0
    :goto_0
    return-void

    .line 1061
    :cond_1
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1062
    iget-object v3, p0, Lcom/android/server/PowerGuruService;->mHandler:Lcom/android/server/PowerGuruService$InternalHandler;

    iget-object v4, p0, Lcom/android/server/PowerGuruService;->mHandler:Lcom/android/server/PowerGuruService$InternalHandler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/server/PowerGuruService$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/PowerGuruService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1063
    :cond_2
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1064
    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 1066
    .local v1, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 1067
    .local v2, "isConnected":Z
    iget-object v5, p0, Lcom/android/server/PowerGuruService;->mHandler:Lcom/android/server/PowerGuruService$InternalHandler;

    iget-object v6, p0, Lcom/android/server/PowerGuruService;->mHandler:Lcom/android/server/PowerGuruService$InternalHandler;

    const/4 v7, 0x6

    if-eqz v2, :cond_3

    :goto_1
    invoke-virtual {v6, v7, v3, v4}, Lcom/android/server/PowerGuruService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/android/server/PowerGuruService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1

    .line 1068
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v2    # "isConnected":Z
    :cond_4
    const-string v5, "android.intent.action.VPN_ON"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1069
    iget-object v5, p0, Lcom/android/server/PowerGuruService;->mHandler:Lcom/android/server/PowerGuruService$InternalHandler;

    iget-object v6, p0, Lcom/android/server/PowerGuruService;->mHandler:Lcom/android/server/PowerGuruService$InternalHandler;

    invoke-virtual {v6, v7, v3, v4}, Lcom/android/server/PowerGuruService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/android/server/PowerGuruService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1070
    :cond_5
    const-string v3, "android.intent.action.VPN_OFF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1071
    iget-object v3, p0, Lcom/android/server/PowerGuruService;->mHandler:Lcom/android/server/PowerGuruService$InternalHandler;

    iget-object v5, p0, Lcom/android/server/PowerGuruService;->mHandler:Lcom/android/server/PowerGuruService$InternalHandler;

    invoke-virtual {v5, v7, v4, v4}, Lcom/android/server/PowerGuruService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/PowerGuruService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private initData()V
    .locals 5

    .prologue
    .line 1401
    iget-object v3, p0, Lcom/android/server/PowerGuruService;->mPresetHeartBeatRecordFile:Landroid/util/AtomicFile;

    invoke-direct {p0, v3}, Lcom/android/server/PowerGuruService;->readAlarmInfoFromFile(Landroid/util/AtomicFile;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/PowerGuruService;->mPresetHeartbeatList:Ljava/util/List;

    .line 1403
    iget-object v3, p0, Lcom/android/server/PowerGuruService;->mStudiedHeartBeatRecordFile:Landroid/util/AtomicFile;

    invoke-direct {p0, v3}, Lcom/android/server/PowerGuruService;->readAlarmInfoFromFile(Landroid/util/AtomicFile;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/PowerGuruService;->mSavedHeartbeatList:Ljava/util/List;

    .line 1405
    iget-object v3, p0, Lcom/android/server/PowerGuruService;->mWhiteAppFile:Landroid/util/AtomicFile;

    invoke-direct {p0, v3}, Lcom/android/server/PowerGuruService;->readStringListFromFile(Landroid/util/AtomicFile;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/PowerGuruService;->mWhiteAppList:Ljava/util/List;

    .line 1408
    const-string v3, "White APP LIST:"

    invoke-direct {p0, v3}, Lcom/android/server/PowerGuruService;->dbgLogd(Ljava/lang/String;)V

    .line 1409
    iget-object v3, p0, Lcom/android/server/PowerGuruService;->mWhiteAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1410
    .local v2, "str":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1413
    .end local v2    # "str":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/PowerGuruService;->getThirdPartyAppsList(I)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/PowerGuruService;->getThirdPartyAppsInfoList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/PowerGuruService;->mCandicateWhiteList:Ljava/util/List;

    .line 1416
    const-string v3, "Candicate White APP LIST:"

    invoke-direct {p0, v3}, Lcom/android/server/PowerGuruService;->dbgLogd(Ljava/lang/String;)V

    .line 1417
    iget-object v3, p0, Lcom/android/server/PowerGuruService;->mCandicateWhiteList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1418
    .local v1, "s":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1421
    .end local v1    # "s":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/PowerGuruService;->isSupportBlackList()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1422
    iget-object v3, p0, Lcom/android/server/PowerGuruService;->mBlackAppFile:Landroid/util/AtomicFile;

    invoke-direct {p0, v3}, Lcom/android/server/PowerGuruService;->readStringListFromFile(Landroid/util/AtomicFile;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/PowerGuruService;->mBlackAppList:Ljava/util/List;

    .line 1425
    const-string v3, "Black APP LIST:"

    invoke-direct {p0, v3}, Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V

    .line 1426
    iget-object v3, p0, Lcom/android/server/PowerGuruService;->mBlackAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1427
    .restart local v1    # "s":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1432
    .end local v1    # "s":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private isAlarmMatched(Landroid/app/PowerGuruAlarmInfo;Lcom/android/server/PowerGuruService$AlarmInfo;Z)Z
    .locals 6
    .param p1, "a1"    # Landroid/app/PowerGuruAlarmInfo;
    .param p2, "a2"    # Lcom/android/server/PowerGuruService$AlarmInfo;
    .param p3, "isRepeat"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 610
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v0, v1

    .line 627
    :cond_1
    :goto_0
    return v0

    .line 612
    :cond_2
    iget-object v2, p1, Landroid/app/PowerGuruAlarmInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p1, Landroid/app/PowerGuruAlarmInfo;->packageName:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/PowerGuruService$AlarmInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p1, Landroid/app/PowerGuruAlarmInfo;->actionName:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p1, Landroid/app/PowerGuruAlarmInfo;->actionName:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/PowerGuruService$AlarmInfo;->action:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget-object v2, p1, Landroid/app/PowerGuruAlarmInfo;->componentName:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p1, Landroid/app/PowerGuruAlarmInfo;->componentName:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/PowerGuruService$AlarmInfo;->componentName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 617
    :cond_4
    if-eqz p3, :cond_1

    .line 618
    iget-wide v2, p2, Lcom/android/server/PowerGuruService$AlarmInfo;->repeatInterval:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    move v0, v1

    .line 621
    goto :goto_0

    :cond_5
    move v0, v1

    .line 627
    goto :goto_0
.end method

.method private isAlarmMatched(Lcom/android/server/PowerGuruService$AlarmInfo;Lcom/android/server/PowerGuruService$AlarmInfo;)Z
    .locals 3
    .param p1, "a1"    # Lcom/android/server/PowerGuruService$AlarmInfo;
    .param p2, "a2"    # Lcom/android/server/PowerGuruService$AlarmInfo;

    .prologue
    const/4 v0, 0x0

    .line 575
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 582
    :cond_0
    :goto_0
    return v0

    .line 577
    :cond_1
    iget-object v1, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/server/PowerGuruService$AlarmInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->action:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->action:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/server/PowerGuruService$AlarmInfo;->action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->componentName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->componentName:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/server/PowerGuruService$AlarmInfo;->componentName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 579
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isAlarmMatched(Lcom/android/server/PowerGuruService$AlarmInfo;Lcom/android/server/PowerGuruService$AlarmInfo;Z)Z
    .locals 6
    .param p1, "a1"    # Lcom/android/server/PowerGuruService$AlarmInfo;
    .param p2, "a2"    # Lcom/android/server/PowerGuruService$AlarmInfo;
    .param p3, "isRepeat"    # Z

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 588
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v0, v1

    .line 605
    :cond_1
    :goto_0
    return v0

    .line 590
    :cond_2
    iget-object v2, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->packageName:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/PowerGuruService$AlarmInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->action:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->action:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/PowerGuruService$AlarmInfo;->action:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget-object v2, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->componentName:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->componentName:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/PowerGuruService$AlarmInfo;->componentName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    iget v2, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->type:I

    iget v3, p2, Lcom/android/server/PowerGuruService$AlarmInfo;->type:I

    if-ne v2, v3, :cond_6

    .line 595
    if-eqz p3, :cond_1

    .line 596
    iget-wide v2, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->repeatInterval:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    iget-wide v2, p2, Lcom/android/server/PowerGuruService$AlarmInfo;->repeatInterval:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    :cond_5
    move v0, v1

    .line 599
    goto :goto_0

    :cond_6
    move v0, v1

    .line 605
    goto :goto_0
.end method

.method private isChinaNetwork()Z
    .locals 6

    .prologue
    .line 986
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 988
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "phoneId":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 989
    const-string v4, "gsm.operator.numeric"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 991
    .local v2, "prop":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 992
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 994
    .local v3, "values":[Ljava/lang/String;
    if-ltz v1, :cond_1

    array-length v4, v3

    if-ge v1, v4, :cond_1

    aget-object v4, v3, v1

    if-eqz v4, :cond_1

    .line 995
    const-string v4, "46000"

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "46001"

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "46002"

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "46007"

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "46008"

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "46009"

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 999
    :cond_0
    const/4 v4, 0x1

    .line 1007
    .end local v2    # "prop":Ljava/lang/String;
    .end local v3    # "values":[Ljava/lang/String;
    :goto_1
    return v4

    .line 988
    .restart local v2    # "prop":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1007
    .end local v2    # "prop":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private isGMSAlarm(Lcom/android/server/PowerGuruService$AlarmInfo;)Z
    .locals 6
    .param p1, "alarm"    # Lcom/android/server/PowerGuruService$AlarmInfo;

    .prologue
    const/4 v4, 0x1

    .line 972
    iget-object v0, p0, Lcom/android/server/PowerGuruService;->mGMSAppList:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 973
    .local v3, "s":Ljava/lang/String;
    if-eqz v3, :cond_0

    iget-object v5, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 975
    iput-boolean v4, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->isFromGms:Z

    .line 981
    .end local v3    # "s":Ljava/lang/String;
    :goto_1
    return v4

    .line 972
    .restart local v3    # "s":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 981
    .end local v3    # "s":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private isInBlackAppList(Lcom/android/server/PowerGuruService$AlarmInfo;)Z
    .locals 3
    .param p1, "alarm"    # Lcom/android/server/PowerGuruService$AlarmInfo;

    .prologue
    .line 632
    iget-object v2, p0, Lcom/android/server/PowerGuruService;->mBlackAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 633
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v2, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 635
    const/4 v2, 0x1

    .line 639
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isInWhiteAppList(Lcom/android/server/PowerGuruService$AlarmInfo;)Z
    .locals 3
    .param p1, "alarm"    # Lcom/android/server/PowerGuruService$AlarmInfo;

    .prologue
    .line 655
    iget-object v2, p0, Lcom/android/server/PowerGuruService;->mWhiteAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 656
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v2, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 658
    const/4 v2, 0x1

    .line 662
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isPresetHeartbeatAlarm(Lcom/android/server/PowerGuruService$AlarmInfo;)Z
    .locals 4
    .param p1, "alarm"    # Lcom/android/server/PowerGuruService$AlarmInfo;

    .prologue
    const/4 v2, 0x1

    .line 668
    iget-object v3, p0, Lcom/android/server/PowerGuruService;->mPresetHeartbeatList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PowerGuruAlarmInfo;

    .line 669
    .local v0, "a":Landroid/app/PowerGuruAlarmInfo;
    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/PowerGuruService;->isAlarmMatched(Landroid/app/PowerGuruAlarmInfo;Lcom/android/server/PowerGuruService$AlarmInfo;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 674
    .end local v0    # "a":Landroid/app/PowerGuruAlarmInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSavedHeartbeatAlarm(Lcom/android/server/PowerGuruService$AlarmInfo;)Z
    .locals 4
    .param p1, "alarm"    # Lcom/android/server/PowerGuruService$AlarmInfo;

    .prologue
    const/4 v2, 0x0

    .line 679
    iget-object v3, p0, Lcom/android/server/PowerGuruService;->mSavedHeartbeatList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PowerGuruAlarmInfo;

    .line 680
    .local v0, "a":Landroid/app/PowerGuruAlarmInfo;
    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/PowerGuruService;->isAlarmMatched(Landroid/app/PowerGuruAlarmInfo;Lcom/android/server/PowerGuruService$AlarmInfo;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 681
    const/4 v2, 0x1

    .line 685
    .end local v0    # "a":Landroid/app/PowerGuruAlarmInfo;
    :cond_1
    return v2
.end method

.method private isSupportBlackList()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1677
    const-string v1, "persist.sys.powerblackapp"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isThirdParty(Lcom/android/server/PowerGuruService$AlarmInfo;)Z
    .locals 3
    .param p1, "alarm"    # Lcom/android/server/PowerGuruService$AlarmInfo;

    .prologue
    .line 644
    iget-object v2, p0, Lcom/android/server/PowerGuruService;->mCandicateWhiteList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 645
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v2, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 647
    const/4 v2, 0x1

    .line 651
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1809
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1814
    return-void
.end method

.method private processBlackAppAlarm(Lcom/android/server/PowerGuruService$AlarmInfo;)V
    .locals 2
    .param p1, "alarm"    # Lcom/android/server/PowerGuruService$AlarmInfo;

    .prologue
    .line 963
    const-string v0, "all the alarm from black app list are added to heartbeat list. (for T5 test result!!)"

    invoke-direct {p0, v0}, Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V

    .line 964
    iget-boolean v0, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->isRepeat:Z

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/PowerGuruService;->addToHeartbeatAlarmList(Lcom/android/server/PowerGuruService$AlarmInfo;ZZ)Z

    .line 965
    return-void
.end method

.method private processGMSAlarm(Lcom/android/server/PowerGuruService$AlarmInfo;)Z
    .locals 2
    .param p1, "alarm"    # Lcom/android/server/PowerGuruService$AlarmInfo;

    .prologue
    const/4 v0, 0x0

    .line 1017
    invoke-direct {p0}, Lcom/android/server/PowerGuruService;->isChinaNetwork()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1018
    iget-boolean v1, p0, Lcom/android/server/PowerGuruService;->mHasVpn:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/PowerGuruService;->mWifiConnected:Z

    if-nez v1, :cond_0

    .line 1019
    const-string v1, "in china network, and vpn and wifi are both not connected!! do not applay this GMS alarm"

    invoke-direct {p0, v1}, Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V

    .line 1020
    iput-boolean v0, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->isAvailable:Z

    .line 1023
    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/PowerGuruService;->addToHeartbeatAlarmList(Lcom/android/server/PowerGuruService$AlarmInfo;ZZ)Z

    .line 1025
    const/4 v0, 0x1

    .line 1029
    :cond_0
    return v0
.end method

.method private processHistoryAlarm(Lcom/android/server/PowerGuruService$AlarmInfo;)V
    .locals 6
    .param p1, "alarm"    # Lcom/android/server/PowerGuruService$AlarmInfo;

    .prologue
    .line 907
    if-nez p1, :cond_0

    .line 927
    :goto_0
    return-void

    .line 909
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "History Alarm size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PowerGuruService;->mHistoryAlarmList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V

    .line 910
    iget-object v2, p0, Lcom/android/server/PowerGuruService;->mHistoryAlarmList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PowerGuruService$AlarmInfo;

    .line 911
    .local v0, "a":Lcom/android/server/PowerGuruService$AlarmInfo;
    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/PowerGuruService;->isAlarmMatched(Lcom/android/server/PowerGuruService$AlarmInfo;Lcom/android/server/PowerGuruService$AlarmInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 912
    const-string v2, "Already saved history alarm:"

    invoke-direct {p0, v2}, Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V

    .line 913
    invoke-direct {p0, v0}, Lcom/android/server/PowerGuruService;->dumpAlarm(Lcom/android/server/PowerGuruService$AlarmInfo;)V

    .line 914
    invoke-direct {p0, v0}, Lcom/android/server/PowerGuruService;->updateHistoryAlarm(Lcom/android/server/PowerGuruService$AlarmInfo;)V

    goto :goto_0

    .line 920
    .end local v0    # "a":Lcom/android/server/PowerGuruService$AlarmInfo;
    :cond_2
    const-string v2, "a new history alarm:"

    invoke-direct {p0, v2}, Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V

    .line 921
    invoke-direct {p0, p1}, Lcom/android/server/PowerGuruService;->dumpAlarm(Lcom/android/server/PowerGuruService$AlarmInfo;)V

    .line 922
    iget-wide v2, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->repeatInterval:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 923
    const-wide/32 v2, 0x1b7740

    iput-wide v2, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->repeatInterval:J

    .line 924
    :cond_3
    iget-object v2, p0, Lcom/android/server/PowerGuruService;->mHistoryAlarmList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private processInputAlarm(Lcom/android/server/PowerGuruService$AlarmInfo;)V
    .locals 8
    .param p1, "alarm"    # Lcom/android/server/PowerGuruService$AlarmInfo;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 807
    if-nez p1, :cond_1

    .line 808
    const-string v2, "null alarm!"

    invoke-direct {p0, v2}, Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V

    .line 901
    :cond_0
    :goto_0
    return-void

    .line 819
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive input alarm: alarm.packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V

    .line 820
    invoke-direct {p0, p1}, Lcom/android/server/PowerGuruService;->dumpAlarm(Lcom/android/server/PowerGuruService$AlarmInfo;)V

    .line 823
    invoke-direct {p0}, Lcom/android/server/PowerGuruService;->isSupportBlackList()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 825
    invoke-direct {p0, p1}, Lcom/android/server/PowerGuruService;->isInBlackAppList(Lcom/android/server/PowerGuruService$AlarmInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 827
    invoke-direct {p0, p1}, Lcom/android/server/PowerGuruService;->isInWhiteAppList(Lcom/android/server/PowerGuruService$AlarmInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 828
    const-string v2, "Alarm is form WhiteApp, is not care about!"

    invoke-direct {p0, v2}, Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 832
    :cond_2
    const-string v2, "Alarm from black app"

    invoke-direct {p0, v2}, Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V

    .line 833
    invoke-direct {p0, p1}, Lcom/android/server/PowerGuruService;->processBlackAppAlarm(Lcom/android/server/PowerGuruService$AlarmInfo;)V

    goto :goto_0

    .line 839
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/PowerGuruService;->isGMSAlarm(Lcom/android/server/PowerGuruService$AlarmInfo;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 841
    const-string v2, "Alarm from GMS app"

    invoke-direct {p0, v2}, Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V

    .line 843
    invoke-direct {p0, p1}, Lcom/android/server/PowerGuruService;->processGMSAlarm(Lcom/android/server/PowerGuruService$AlarmInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 849
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/PowerGuruService;->isThirdParty(Lcom/android/server/PowerGuruService$AlarmInfo;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-boolean v2, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->isFromGms:Z

    if-nez v2, :cond_5

    .line 850
    const-string v2, "Alarm is not from ThirdParty, is not care about!"

    invoke-direct {p0, v2}, Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 856
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/PowerGuruService;->isInWhiteAppList(Lcom/android/server/PowerGuruService$AlarmInfo;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 857
    const-string v2, "Alarm is form WhiteApp, is not care about!"

    invoke-direct {p0, v2}, Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V

    .line 858
    iget-object v2, p0, Lcom/android/server/PowerGuruService;->mHeartbeatAlarmList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PowerGuruService$AlarmInfo;

    .line 859
    .local v0, "a":Lcom/android/server/PowerGuruService$AlarmInfo;
    invoke-direct {p0, v0, p1}, Lcom/android/server/PowerGuruService;->isAlarmMatched(Lcom/android/server/PowerGuruService$AlarmInfo;Lcom/android/server/PowerGuruService$AlarmInfo;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 860
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alarm is in heartlist ,removed packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V

    .line 861
    iget-object v2, p0, Lcom/android/server/PowerGuruService;->mHeartbeatAlarmList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 868
    .end local v0    # "a":Lcom/android/server/PowerGuruService$AlarmInfo;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/PowerGuruService;->isPresetHeartbeatAlarm(Lcom/android/server/PowerGuruService$AlarmInfo;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 869
    const-string v2, "This alarm is a preset Heartbeat alarm! add it to Heartbeat list!"

    invoke-direct {p0, v2}, Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V

    .line 871
    invoke-direct {p0, p1, v5, v4}, Lcom/android/server/PowerGuruService;->addToHeartbeatAlarmList(Lcom/android/server/PowerGuruService$AlarmInfo;ZZ)Z

    goto/16 :goto_0

    .line 876
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/PowerGuruService;->isSavedHeartbeatAlarm(Lcom/android/server/PowerGuruService$AlarmInfo;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 877
    const-string v2, "This alarm is a study saved Heartbeat alarm! add it to Heartbeat list!"

    invoke-direct {p0, v2}, Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V

    .line 879
    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/PowerGuruService;->addToHeartbeatAlarmList(Lcom/android/server/PowerGuruService$AlarmInfo;ZZ)Z

    goto/16 :goto_0

    .line 884
    :cond_9
    iget-wide v2, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->repeatInterval:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_a

    .line 885
    const-string v2, "This alarm is a non-repeat alarm, save it to history alarm list"

    invoke-direct {p0, v2}, Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V

    .line 887
    invoke-direct {p0, p1}, Lcom/android/server/PowerGuruService;->processHistoryAlarm(Lcom/android/server/PowerGuruService$AlarmInfo;)V

    .line 888
    iget-wide v2, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->repeatInterval:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_a

    .line 889
    const-wide/32 v2, 0x1b7740

    iput-wide v2, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->repeatInterval:J

    .line 894
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/server/PowerGuruService;->detectHeartbeatAlarm(Lcom/android/server/PowerGuruService$AlarmInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 895
    const-string v2, "This alarm is a Heartbeat alarm! add it to Heartbeat list!"

    invoke-direct {p0, v2}, Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V

    .line 897
    invoke-direct {p0, p1, v5, v4}, Lcom/android/server/PowerGuruService;->addToHeartbeatAlarmList(Lcom/android/server/PowerGuruService$AlarmInfo;ZZ)Z

    goto/16 :goto_0
.end method

.method private processSuspectedHeartbeatAlarm(Lcom/android/server/PowerGuruService$AlarmInfo;)V
    .locals 1
    .param p1, "alarm"    # Lcom/android/server/PowerGuruService$AlarmInfo;

    .prologue
    .line 932
    const-string v0, "suspected heartbeat alarm:"

    invoke-direct {p0, v0}, Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V

    .line 933
    invoke-direct {p0, p1}, Lcom/android/server/PowerGuruService;->dumpAlarm(Lcom/android/server/PowerGuruService$AlarmInfo;)V

    .line 935
    return-void
.end method

.method private readAlarmInfoFromFile(Landroid/util/AtomicFile;)Ljava/util/List;
    .locals 19
    .param p1, "afile"    # Landroid/util/AtomicFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/AtomicFile;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/PowerGuruAlarmInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1161
    const/4 v14, 0x0

    .line 1163
    .local v14, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 1169
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1172
    .local v13, "retList":Ljava/util/List;, "Ljava/util/List<Landroid/app/PowerGuruAlarmInfo;>;"
    const/4 v3, 0x0

    .line 1173
    .local v3, "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    .line 1174
    .local v12, "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v16, "UTF-8"

    move-object/from16 v0, v16

    invoke-interface {v12, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1175
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    .local v7, "event":I
    move-object v4, v3

    .line 1176
    .end local v3    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    .local v4, "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    :goto_0
    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v7, v0, :cond_c

    .line 1177
    packed-switch v7, :pswitch_data_0

    :cond_0
    :pswitch_0
    move-object v3, v4

    .line 1237
    .end local v4    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    .restart local v3    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    :cond_1
    :goto_1
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_12
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    move-object v4, v3

    .end local v3    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    .restart local v4    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    goto :goto_0

    .line 1164
    .end local v4    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    .end local v7    # "event":I
    .end local v12    # "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "retList":Ljava/util/List;, "Ljava/util/List<Landroid/app/PowerGuruAlarmInfo;>;"
    :catch_0
    move-exception v8

    .line 1165
    .local v8, "exp":Ljava/io/FileNotFoundException;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, ">>>file not found,"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V

    .line 1166
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1260
    .end local v8    # "exp":Ljava/io/FileNotFoundException;
    :goto_2
    return-object v13

    .restart local v4    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    .restart local v7    # "event":I
    .restart local v12    # "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "retList":Ljava/util/List;, "Ljava/util/List<Landroid/app/PowerGuruAlarmInfo;>;"
    :pswitch_1
    move-object v3, v4

    .line 1180
    .end local v4    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    .restart local v3    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    goto :goto_1

    .line 1183
    .end local v3    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    .restart local v4    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    :pswitch_2
    :try_start_2
    const-string v16, "alarmInfo_body"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    .line 1184
    new-instance v3, Landroid/app/PowerGuruAlarmInfo;

    invoke-direct {v3}, Landroid/app/PowerGuruAlarmInfo;-><init>()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1c
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_19
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_18
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_17
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1187
    .end local v4    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    .restart local v3    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    :goto_3
    :try_start_3
    const-string v16, "package_name"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 1188
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    .line 1189
    .local v11, "name":Ljava/lang/String;
    const-string v16, "null"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 1190
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/app/PowerGuruAlarmInfo;->setPkg(Ljava/lang/String;)Ljava/lang/String;

    .line 1196
    .end local v11    # "name":Ljava/lang/String;
    :cond_2
    :goto_4
    const-string v16, "conponent"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 1197
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    .line 1198
    .local v5, "cpn":Ljava/lang/String;
    const-string v16, "null"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 1199
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/app/PowerGuruAlarmInfo;->setCpnt(Ljava/lang/String;)Ljava/lang/String;

    .line 1205
    .end local v5    # "cpn":Ljava/lang/String;
    :cond_3
    :goto_5
    const-string v16, "action_name"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 1206
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    .line 1207
    .local v2, "act":Ljava/lang/String;
    const-string v16, "null"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 1208
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/app/PowerGuruAlarmInfo;->setAction(Ljava/lang/String;)Ljava/lang/String;

    .line 1214
    .end local v2    # "act":Ljava/lang/String;
    :cond_4
    :goto_6
    const-string v16, "alarm_type"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 1215
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 1216
    .local v15, "type":I
    invoke-virtual {v3, v15}, Landroid/app/PowerGuruAlarmInfo;->setAlarmType(I)I

    .line 1219
    .end local v15    # "type":I
    :cond_5
    const-string v16, "isGms"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 1220
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v16

    const-string v17, "true"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    const/4 v9, 0x1

    .line 1221
    .local v9, "fromGms":Z
    :goto_7
    invoke-virtual {v3, v9}, Landroid/app/PowerGuruAlarmInfo;->setFromGMS(Z)V

    .line 1224
    .end local v9    # "fromGms":Z
    :cond_6
    const-string v16, "isAvail"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 1225
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v16

    const-string v17, "true"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    const/4 v10, 0x1

    .line 1226
    .local v10, "isAvailable":Z
    :goto_8
    invoke-virtual {v3, v10}, Landroid/app/PowerGuruAlarmInfo;->setAvailable(Z)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_12
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 1239
    .end local v7    # "event":I
    .end local v10    # "isAvailable":Z
    .end local v12    # "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v6

    .line 1240
    .local v6, "e":Ljava/lang/IllegalStateException;
    :goto_9
    :try_start_4
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1253
    :try_start_5
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_b

    goto/16 :goto_2

    .line 1254
    :catch_2
    move-exception v6

    .line 1255
    .local v6, "e":Ljava/io/IOException;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Fail to close stream "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1192
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v7    # "event":I
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v12    # "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_7
    :try_start_6
    invoke-virtual {v3, v11}, Landroid/app/PowerGuruAlarmInfo;->setPkg(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_12
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_4

    .line 1241
    .end local v7    # "event":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_3
    move-exception v6

    .line 1242
    .local v6, "e":Ljava/lang/NullPointerException;
    :goto_a
    :try_start_7
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1253
    :try_start_8
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_c

    goto/16 :goto_2

    .line 1254
    :catch_4
    move-exception v6

    .line 1255
    .local v6, "e":Ljava/io/IOException;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Fail to close stream "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1201
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v5    # "cpn":Ljava/lang/String;
    .restart local v7    # "event":I
    .restart local v12    # "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_8
    :try_start_9
    invoke-virtual {v3, v5}, Landroid/app/PowerGuruAlarmInfo;->setCpnt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_12
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_5

    .line 1243
    .end local v5    # "cpn":Ljava/lang/String;
    .end local v7    # "event":I
    .end local v12    # "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_5
    move-exception v6

    .line 1244
    .local v6, "e":Ljava/lang/NumberFormatException;
    :goto_b
    :try_start_a
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1253
    :try_start_b
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_d

    goto/16 :goto_2

    .line 1254
    :catch_6
    move-exception v6

    .line 1255
    .local v6, "e":Ljava/io/IOException;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Fail to close stream "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1210
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v2    # "act":Ljava/lang/String;
    .restart local v7    # "event":I
    .restart local v12    # "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_9
    :try_start_c
    invoke-virtual {v3, v2}, Landroid/app/PowerGuruAlarmInfo;->setAction(Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_12
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_6

    .line 1245
    .end local v2    # "act":Ljava/lang/String;
    .end local v7    # "event":I
    .end local v12    # "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_7
    move-exception v6

    .line 1246
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_c
    :try_start_d
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1253
    :try_start_e
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    goto/16 :goto_2

    .line 1254
    :catch_8
    move-exception v6

    .line 1255
    .local v6, "e":Ljava/io/IOException;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Fail to close stream "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1220
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v7    # "event":I
    .restart local v12    # "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_7

    .line 1225
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_8

    .line 1231
    .end local v3    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    .restart local v4    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    :pswitch_3
    :try_start_f
    const-string v16, "alarmInfo_body"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 1232
    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_1c
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_1a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_19
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_18
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_f} :catch_17
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 1233
    const/4 v3, 0x0

    .end local v4    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    .restart local v3    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    goto/16 :goto_1

    .line 1253
    .end local v3    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    .restart local v4    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    :cond_c
    :try_start_10
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a

    goto/16 :goto_2

    .line 1254
    :catch_9
    move-exception v6

    .line 1255
    .restart local v6    # "e":Ljava/io/IOException;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Fail to close stream "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1256
    .end local v6    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v6

    .line 1257
    .local v6, "e":Ljava/lang/Exception;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "exception at last,e: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1256
    .end local v4    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    .end local v7    # "event":I
    .end local v12    # "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    .local v6, "e":Ljava/lang/IllegalStateException;
    :catch_b
    move-exception v6

    .line 1257
    .local v6, "e":Ljava/lang/Exception;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "exception at last,e: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1256
    .local v6, "e":Ljava/lang/NullPointerException;
    :catch_c
    move-exception v6

    .line 1257
    .local v6, "e":Ljava/lang/Exception;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "exception at last,e: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1256
    .local v6, "e":Ljava/lang/NumberFormatException;
    :catch_d
    move-exception v6

    .line 1257
    .local v6, "e":Ljava/lang/Exception;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "exception at last,e: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1256
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_e
    move-exception v6

    .line 1257
    .local v6, "e":Ljava/lang/Exception;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "exception at last,e: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1247
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_f
    move-exception v6

    .line 1248
    .local v6, "e":Ljava/io/IOException;
    :goto_d
    :try_start_11
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 1253
    :try_start_12
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_10
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_11

    goto/16 :goto_2

    .line 1254
    :catch_10
    move-exception v6

    .line 1255
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Fail to close stream "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1256
    :catch_11
    move-exception v6

    .line 1257
    .local v6, "e":Ljava/lang/Exception;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "exception at last,e: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1249
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_12
    move-exception v6

    .line 1250
    .local v6, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_e
    :try_start_13
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 1253
    :try_start_14
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_13
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_14

    goto/16 :goto_2

    .line 1254
    :catch_13
    move-exception v6

    .line 1255
    .local v6, "e":Ljava/io/IOException;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Fail to close stream "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1256
    .local v6, "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_14
    move-exception v6

    .line 1257
    .local v6, "e":Ljava/lang/Exception;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "exception at last,e: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1252
    .end local v3    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v16

    .line 1253
    :try_start_15
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_16

    .line 1258
    :goto_f
    throw v16

    .line 1254
    :catch_15
    move-exception v6

    .line 1255
    .local v6, "e":Ljava/io/IOException;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Fail to close stream "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V

    goto :goto_f

    .line 1256
    .end local v6    # "e":Ljava/io/IOException;
    :catch_16
    move-exception v6

    .line 1257
    .local v6, "e":Ljava/lang/Exception;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "exception at last,e: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V

    goto :goto_f

    .line 1249
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v4    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    .restart local v7    # "event":I
    .restart local v12    # "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_17
    move-exception v6

    move-object v3, v4

    .end local v4    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    .restart local v3    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    goto/16 :goto_e

    .line 1247
    .end local v3    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    .restart local v4    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    :catch_18
    move-exception v6

    move-object v3, v4

    .end local v4    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    .restart local v3    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    goto/16 :goto_d

    .line 1245
    .end local v3    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    .restart local v4    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    :catch_19
    move-exception v6

    move-object v3, v4

    .end local v4    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    .restart local v3    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    goto/16 :goto_c

    .line 1243
    .end local v3    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    .restart local v4    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    :catch_1a
    move-exception v6

    move-object v3, v4

    .end local v4    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    .restart local v3    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    goto/16 :goto_b

    .line 1241
    .end local v3    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    .restart local v4    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    :catch_1b
    move-exception v6

    move-object v3, v4

    .end local v4    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    .restart local v3    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    goto/16 :goto_a

    .line 1239
    .end local v3    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    .restart local v4    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    :catch_1c
    move-exception v6

    move-object v3, v4

    .end local v4    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    .restart local v3    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    goto/16 :goto_9

    .end local v3    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    .restart local v4    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    :cond_d
    move-object v3, v4

    .end local v4    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    .restart local v3    # "alarmInfoItem":Landroid/app/PowerGuruAlarmInfo;
    goto/16 :goto_3

    .line 1177
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private readStringListFromFile(Landroid/util/AtomicFile;)Ljava/util/List;
    .locals 10
    .param p1, "afile"    # Landroid/util/AtomicFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/AtomicFile;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1310
    const/4 v6, 0x0

    .line 1312
    .local v6, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1318
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1321
    .local v5, "retList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1322
    .local v3, "pkg":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 1323
    .local v4, "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v7, "UTF-8"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1324
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 1325
    .local v1, "event":I
    :goto_0
    const/4 v7, 0x1

    if-eq v1, v7, :cond_2

    .line 1326
    packed-switch v1, :pswitch_data_0

    .line 1346
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 1313
    .end local v1    # "event":I
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "retList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 1314
    .local v2, "exp":Ljava/io/FileNotFoundException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ">>>file not found,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V

    .line 1315
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1368
    .end local v2    # "exp":Ljava/io/FileNotFoundException;
    :goto_2
    return-object v5

    .line 1331
    .restart local v1    # "event":I
    .restart local v3    # "pkg":Ljava/lang/String;
    .restart local v4    # "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "retList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1
    :try_start_2
    const-string v7, "packageItem"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1334
    :cond_1
    const-string v7, "pkg_name"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1335
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1340
    :pswitch_2
    const-string v7, "packageItem"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1341
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1342
    const/4 v3, 0x0

    goto :goto_1

    .line 1362
    :cond_2
    :try_start_3
    invoke-direct {p0, v5}, Lcom/android/server/PowerGuruService;->dumpStringList(Ljava/util/List;)V

    .line 1363
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 1364
    :catch_1
    move-exception v0

    .line 1365
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed close stream "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 1348
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "event":I
    .end local v4    # "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v0

    .line 1349
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed parsing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1362
    :try_start_5
    invoke-direct {p0, v5}, Lcom/android/server/PowerGuruService;->dumpStringList(Ljava/util/List;)V

    .line 1363
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 1364
    :catch_3
    move-exception v0

    .line 1365
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed close stream "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1350
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 1351
    .local v0, "e":Ljava/lang/NullPointerException;
    :try_start_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed parsing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1362
    :try_start_7
    invoke-direct {p0, v5}, Lcom/android/server/PowerGuruService;->dumpStringList(Ljava/util/List;)V

    .line 1363
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_2

    .line 1364
    :catch_5
    move-exception v0

    .line 1365
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed close stream "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1352
    .end local v0    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 1353
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed parsing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1362
    :try_start_9
    invoke-direct {p0, v5}, Lcom/android/server/PowerGuruService;->dumpStringList(Ljava/util/List;)V

    .line 1363
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto/16 :goto_2

    .line 1364
    :catch_7
    move-exception v0

    .line 1365
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed close stream "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1354
    .end local v0    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v0

    .line 1355
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed parsing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1362
    :try_start_b
    invoke-direct {p0, v5}, Lcom/android/server/PowerGuruService;->dumpStringList(Ljava/util/List;)V

    .line 1363
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    goto/16 :goto_2

    .line 1364
    :catch_9
    move-exception v0

    .line 1365
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed close stream "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1356
    .end local v0    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v0

    .line 1357
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed parsing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1362
    :try_start_d
    invoke-direct {p0, v5}, Lcom/android/server/PowerGuruService;->dumpStringList(Ljava/util/List;)V

    .line 1363
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    goto/16 :goto_2

    .line 1364
    :catch_b
    move-exception v0

    .line 1365
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed close stream "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1358
    .end local v0    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v0

    .line 1359
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed parsing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 1362
    :try_start_f
    invoke-direct {p0, v5}, Lcom/android/server/PowerGuruService;->dumpStringList(Ljava/util/List;)V

    .line 1363
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_d

    goto/16 :goto_2

    .line 1364
    :catch_d
    move-exception v0

    .line 1365
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed close stream "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1361
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 1362
    :try_start_10
    invoke-direct {p0, v5}, Lcom/android/server/PowerGuruService;->dumpStringList(Ljava/util/List;)V

    .line 1363
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_e

    .line 1366
    :goto_3
    throw v7

    .line 1364
    :catch_e
    move-exception v0

    .line 1365
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed close stream "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V

    goto :goto_3

    .line 1326
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private registerForBroadcasts()V
    .locals 3

    .prologue
    .line 1037
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1038
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1039
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1040
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1041
    const-string v1, "android.intent.action.VPN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1042
    const-string v1, "android.intent.action.VPN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1044
    iget-object v1, p0, Lcom/android/server/PowerGuruService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/PowerGuruService$1;

    invoke-direct {v2, p0}, Lcom/android/server/PowerGuruService$1;-><init>(Lcom/android/server/PowerGuruService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1053
    new-instance v1, Lcom/android/server/PowerGuruService$UninstallReceiver;

    iget-object v2, p0, Lcom/android/server/PowerGuruService;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/server/PowerGuruService$UninstallReceiver;-><init>(Lcom/android/server/PowerGuruService;Landroid/content/Context;)V

    .line 1054
    return-void
.end method

.method private removeAlarmInfoListItemByPkgList(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/PowerGuruService$AlarmInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1623
    .local p1, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "alarmInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/PowerGuruService$AlarmInfo;>;"
    move-object v3, p1

    .line 1624
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, p2

    .line 1626
    .local v0, "almInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/PowerGuruService$AlarmInfo;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1628
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1629
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 1630
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PowerGuruService$AlarmInfo;

    iget-object v5, v5, Lcom/android/server/PowerGuruService$AlarmInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1631
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1629
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1628
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1636
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_2
    return-void
.end method

.method private removePGAlarmListItemByPkgList(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PowerGuruAlarmInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1639
    .local p1, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "alarmInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/PowerGuruAlarmInfo;>;"
    move-object v3, p1

    .line 1640
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, p2

    .line 1642
    .local v0, "almInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/PowerGuruAlarmInfo;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1644
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1645
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 1646
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PowerGuruAlarmInfo;

    iget-object v5, v5, Landroid/app/PowerGuruAlarmInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1647
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1645
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1644
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1652
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_2
    return-void
.end method

.method private removeStringListItemByPkgList(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1655
    .local p1, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "targetList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v1, p1

    .line 1656
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v3, p2

    .line 1658
    .local v3, "tarList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1660
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1661
    .local v2, "str":Ljava/lang/String;
    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1664
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "str":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private saveStudyHeartbeatListToDisk()V
    .locals 1

    .prologue
    .line 1565
    iget-object v0, p0, Lcom/android/server/PowerGuruService;->mDelayedDiskWrite:Lcom/android/server/PowerGuruService$DelayedDiskWrite;

    if-eqz v0, :cond_0

    .line 1566
    iget-object v0, p0, Lcom/android/server/PowerGuruService;->mDelayedDiskWrite:Lcom/android/server/PowerGuruService$DelayedDiskWrite;

    invoke-virtual {v0}, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->writeAlarmList()V

    .line 1568
    :cond_0
    return-void
.end method

.method private saveWhileListToDisk()V
    .locals 1

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/android/server/PowerGuruService;->mDelayedDiskWrite:Lcom/android/server/PowerGuruService$DelayedDiskWrite;

    if-eqz v0, :cond_0

    .line 1559
    iget-object v0, p0, Lcom/android/server/PowerGuruService;->mDelayedDiskWrite:Lcom/android/server/PowerGuruService$DelayedDiskWrite;

    invoke-virtual {v0}, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->writeAppList()V

    .line 1561
    :cond_0
    return-void
.end method

.method private updateDataOnPackagesChanged(Ljava/util/List;I)V
    .locals 5
    .param p2, "changeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1577
    .local p1, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, p1

    .line 1578
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataOnPackagesRemoved,changetype:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V

    .line 1585
    if-nez p2, :cond_1

    .line 1586
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1587
    iget-object v2, p0, Lcom/android/server/PowerGuruService;->mWhiteAppList:Ljava/util/List;

    monitor-enter v2

    .line 1588
    :try_start_0
    const-string v1, "update mWhiteAppList"

    invoke-direct {p0, v1}, Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V

    .line 1590
    iget-object v1, p0, Lcom/android/server/PowerGuruService;->mWhiteAppList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/android/server/PowerGuruService;->removeStringListItemByPkgList(Ljava/util/List;Ljava/util/List;)V

    .line 1591
    iget-object v1, p0, Lcom/android/server/PowerGuruService;->mHandler:Lcom/android/server/PowerGuruService$InternalHandler;

    iget-object v3, p0, Lcom/android/server/PowerGuruService;->mHandler:Lcom/android/server/PowerGuruService$InternalHandler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/server/PowerGuruService$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/PowerGuruService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1593
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1595
    iget-object v2, p0, Lcom/android/server/PowerGuruService;->mHeartbeatAlarmList:Ljava/util/List;

    monitor-enter v2

    .line 1596
    :try_start_1
    const-string v1, "update mHeartbeatAlarmList"

    invoke-direct {p0, v1}, Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V

    .line 1598
    iget-object v1, p0, Lcom/android/server/PowerGuruService;->mHeartbeatAlarmList:Ljava/util/List;

    invoke-direct {p0, p1, v1}, Lcom/android/server/PowerGuruService;->removeAlarmInfoListItemByPkgList(Ljava/util/List;Ljava/util/List;)V

    .line 1600
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1602
    iget-object v2, p0, Lcom/android/server/PowerGuruService;->mCandicateWhiteList:Ljava/util/List;

    monitor-enter v2

    .line 1603
    :try_start_2
    const-string v1, "update mCandicateWhiteList"

    invoke-direct {p0, v1}, Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V

    .line 1605
    iget-object v1, p0, Lcom/android/server/PowerGuruService;->mCandicateWhiteList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/android/server/PowerGuruService;->removeStringListItemByPkgList(Ljava/util/List;Ljava/util/List;)V

    .line 1607
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1620
    :cond_0
    :goto_0
    return-void

    .line 1593
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 1600
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 1607
    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1

    .line 1609
    :cond_1
    const/4 v1, 0x1

    if-ne v1, p2, :cond_2

    .line 1610
    iget-object v2, p0, Lcom/android/server/PowerGuruService;->mCandicateWhiteList:Ljava/util/List;

    monitor-enter v2

    .line 1611
    :try_start_6
    const-string v1, "add pkgs to mCandicateWhiteList"

    invoke-direct {p0, v1}, Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V

    .line 1613
    iget-object v1, p0, Lcom/android/server/PowerGuruService;->mCandicateWhiteList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/android/server/PowerGuruService;->addStringListItemByPkgList(Ljava/util/List;Ljava/util/List;)V

    .line 1615
    monitor-exit v2

    goto :goto_0

    :catchall_3
    move-exception v1

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v1

    .line 1617
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid changeType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateHistoryAlarm(Lcom/android/server/PowerGuruService$AlarmInfo;)V
    .locals 7
    .param p1, "alarm"    # Lcom/android/server/PowerGuruService$AlarmInfo;

    .prologue
    const/4 v6, 0x1

    .line 767
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 768
    .local v2, "now":J
    iget-wide v4, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->firstSetTime:J

    sub-long v0, v2, v4

    .line 772
    .local v0, "elapsed":J
    iget v4, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->setCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->setCount:I

    .line 778
    iput-wide v0, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->repeatInterval:J

    .line 780
    const-string v4, "update history alarm:"

    invoke-direct {p0, v4}, Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V

    .line 781
    invoke-direct {p0, p1}, Lcom/android/server/PowerGuruService;->dumpAlarm(Lcom/android/server/PowerGuruService$AlarmInfo;)V

    .line 784
    invoke-direct {p0, p1}, Lcom/android/server/PowerGuruService;->detectHeartbeatAlarm(Lcom/android/server/PowerGuruService$AlarmInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 786
    const-string v4, "add this non-repeat alarm to heartbeat list!"

    invoke-direct {p0, v4}, Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V

    .line 789
    const/4 v4, 0x0

    invoke-direct {p0, p1, v6, v4}, Lcom/android/server/PowerGuruService;->addToHeartbeatAlarmList(Lcom/android/server/PowerGuruService$AlarmInfo;ZZ)Z

    .line 792
    iget-object v4, p0, Lcom/android/server/PowerGuruService;->mHistoryAlarmList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 801
    :goto_0
    return-void

    .line 798
    :cond_0
    iput-wide v2, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->firstSetTime:J

    .line 799
    iput v6, p1, Lcom/android/server/PowerGuruService$AlarmInfo;->setCount:I

    goto :goto_0
.end method

.method private writeAlarmInfoToFile(Landroid/util/AtomicFile;Ljava/util/List;)Z
    .locals 9
    .param p1, "aFile"    # Landroid/util/AtomicFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/AtomicFile;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PowerGuruAlarmInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "alarmInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/PowerGuruAlarmInfo;>;"
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1084
    :try_start_0
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 1091
    .local v4, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1092
    .local v3, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string v7, "utf-8"

    invoke-interface {v3, v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1093
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1094
    const/4 v7, 0x0

    const-string v8, "alarm_info_list"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1096
    if-eqz p2, :cond_5

    .line 1097
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PowerGuruAlarmInfo;

    .line 1098
    .local v2, "powerGuruAlarmInfo":Landroid/app/PowerGuruAlarmInfo;
    const/4 v7, 0x0

    const-string v8, "alarmInfo_body"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1101
    const/4 v7, 0x0

    const-string v8, "package_name"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1102
    invoke-virtual {v2}, Landroid/app/PowerGuruAlarmInfo;->getPkg()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    .line 1103
    const-string v7, "null"

    invoke-interface {v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1107
    :goto_1
    const/4 v7, 0x0

    const-string v8, "package_name"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1109
    const/4 v7, 0x0

    const-string v8, "conponent"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1110
    invoke-virtual {v2}, Landroid/app/PowerGuruAlarmInfo;->getCpnt()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    .line 1111
    const-string v7, "null"

    invoke-interface {v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1115
    :goto_2
    const/4 v7, 0x0

    const-string v8, "conponent"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1117
    const/4 v7, 0x0

    const-string v8, "action_name"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1118
    invoke-virtual {v2}, Landroid/app/PowerGuruAlarmInfo;->getAction()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    .line 1119
    const-string v7, "null"

    invoke-interface {v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1123
    :goto_3
    const/4 v7, 0x0

    const-string v8, "action_name"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1125
    const/4 v7, 0x0

    const-string v8, "alarm_type"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1126
    invoke-virtual {v2}, Landroid/app/PowerGuruAlarmInfo;->getAlarmType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1127
    const/4 v7, 0x0

    const-string v8, "alarm_type"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1129
    const/4 v7, 0x0

    const-string v8, "isGms"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1130
    invoke-virtual {v2}, Landroid/app/PowerGuruAlarmInfo;->getFromGMS()Z

    move-result v7

    if-ne v7, v5, :cond_3

    const-string v7, "true"

    :goto_4
    invoke-interface {v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1131
    const/4 v7, 0x0

    const-string v8, "isGms"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1133
    const/4 v7, 0x0

    const-string v8, "isAvail"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1134
    invoke-virtual {v2}, Landroid/app/PowerGuruAlarmInfo;->getAvailable()Z

    move-result v7

    if-ne v7, v5, :cond_4

    const-string v7, "true"

    :goto_5
    invoke-interface {v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1135
    const/4 v7, 0x0

    const-string v8, "isAvail"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1137
    const/4 v7, 0x0

    const-string v8, "alarmInfo_body"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1144
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "powerGuruAlarmInfo":Landroid/app/PowerGuruAlarmInfo;
    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v0

    .line 1145
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "PowerGuruService"

    const-string v7, "Failed to write state, restoring backup."

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1146
    invoke-virtual {p1, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    move v5, v6

    .line 1149
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    :goto_6
    return v5

    .line 1085
    :catch_1
    move-exception v0

    .line 1086
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "PowerGuruService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to write state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 1087
    goto :goto_6

    .line 1105
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "powerGuruAlarmInfo":Landroid/app/PowerGuruAlarmInfo;
    .restart local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Landroid/app/PowerGuruAlarmInfo;->getPkg()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1

    .line 1113
    :cond_1
    invoke-virtual {v2}, Landroid/app/PowerGuruAlarmInfo;->getCpnt()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_2

    .line 1121
    :cond_2
    invoke-virtual {v2}, Landroid/app/PowerGuruAlarmInfo;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_3

    .line 1130
    :cond_3
    const-string v7, "false"

    goto :goto_4

    .line 1134
    :cond_4
    const-string v7, "false"

    goto :goto_5

    .line 1141
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "powerGuruAlarmInfo":Landroid/app/PowerGuruAlarmInfo;
    :cond_5
    const/4 v7, 0x0

    const-string v8, "alarm_info_list"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1142
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1143
    invoke-virtual {p1, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6
.end method

.method private writeAppListToFile(Landroid/util/AtomicFile;Ljava/util/List;)Z
    .locals 9
    .param p1, "aFile"    # Landroid/util/AtomicFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/AtomicFile;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1269
    :try_start_0
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 1276
    .local v4, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1277
    .local v3, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string v7, "utf-8"

    invoke-interface {v3, v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1278
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1279
    const/4 v7, 0x0

    const-string v8, "app_list"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1281
    if-eqz p2, :cond_1

    .line 1282
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1283
    .local v2, "pkg":Ljava/lang/String;
    const/4 v7, 0x0

    const-string v8, "packageItem"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1286
    const/4 v7, 0x0

    const-string v8, "pkg_name"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1287
    if-nez v2, :cond_0

    .line 1288
    const-string v7, "null"

    invoke-interface {v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1292
    :goto_1
    const/4 v7, 0x0

    const-string v8, "pkg_name"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1294
    const/4 v7, 0x0

    const-string v8, "packageItem"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1300
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v0

    .line 1301
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to write state, restoring backup.exp:\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V

    .line 1302
    invoke-virtual {p1, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    move v5, v6

    .line 1305
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    :goto_2
    return v5

    .line 1270
    :catch_1
    move-exception v0

    .line 1271
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to write state: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V

    move v5, v6

    .line 1272
    goto :goto_2

    .line 1290
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "pkg":Ljava/lang/String;
    .restart local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :cond_0
    :try_start_2
    invoke-interface {v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 1297
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    const-string v8, "app_list"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1298
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1299
    invoke-virtual {p1, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method private writeStudiedAlarmInfoListToFile()Z
    .locals 4

    .prologue
    .line 1153
    const/4 v0, 0x0

    .line 1154
    .local v0, "ret":Z
    iget-object v2, p0, Lcom/android/server/PowerGuruService;->mSavedHeartbeatList:Ljava/util/List;

    monitor-enter v2

    .line 1155
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PowerGuruService;->mStudiedHeartBeatRecordFile:Landroid/util/AtomicFile;

    iget-object v3, p0, Lcom/android/server/PowerGuruService;->mSavedHeartbeatList:Ljava/util/List;

    invoke-direct {p0, v1, v3}, Lcom/android/server/PowerGuruService;->writeAlarmInfoToFile(Landroid/util/AtomicFile;Ljava/util/List;)Z

    move-result v0

    .line 1156
    monitor-exit v2

    .line 1157
    return v0

    .line 1156
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addWhiteAppfromList(Ljava/lang/String;)Z
    .locals 6
    .param p1, "appname"    # Ljava/lang/String;

    .prologue
    .line 1759
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "before addWhiteAppfromList,appname:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",cur size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/PowerGuruService;->mWhiteAppList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V

    .line 1760
    if-nez p1, :cond_0

    const/4 v3, 0x0

    .line 1779
    :goto_0
    return v3

    .line 1762
    :cond_0
    const/4 v0, 0x0

    .line 1763
    .local v0, "found":Z
    iget-object v4, p0, Lcom/android/server/PowerGuruService;->mWhiteAppList:Ljava/util/List;

    monitor-enter v4

    .line 1764
    :try_start_0
    iget-object v3, p0, Lcom/android/server/PowerGuruService;->mWhiteAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1765
    .local v2, "s":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1766
    const/4 v0, 0x1

    .line 1771
    .end local v2    # "s":Ljava/lang/String;
    :cond_2
    if-nez v0, :cond_3

    .line 1772
    iget-object v3, p0, Lcom/android/server/PowerGuruService;->mWhiteAppList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1774
    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1775
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after addWhiteAppfromList,size of whitelist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/PowerGuruService;->mWhiteAppList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V

    .line 1777
    iget-object v3, p0, Lcom/android/server/PowerGuruService;->mHandler:Lcom/android/server/PowerGuruService$InternalHandler;

    iget-object v4, p0, Lcom/android/server/PowerGuruService;->mHandler:Lcom/android/server/PowerGuruService$InternalHandler;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/server/PowerGuruService$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/PowerGuruService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1779
    const/4 v3, 0x1

    goto :goto_0

    .line 1774
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public delWhiteAppfromList(Ljava/lang/String;)Z
    .locals 5
    .param p1, "appname"    # Ljava/lang/String;

    .prologue
    .line 1730
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "before delWhiteAppfromList,appname:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",cur size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PowerGuruService;->mWhiteAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V

    .line 1731
    iget-object v3, p0, Lcom/android/server/PowerGuruService;->mWhiteAppList:Ljava/util/List;

    monitor-enter v3

    .line 1732
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PowerGuruService;->mWhiteAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1733
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1734
    iget-object v2, p0, Lcom/android/server/PowerGuruService;->mWhiteAppList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1737
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "s":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1738
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after delWhiteAppfromList,size of whitelist:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PowerGuruService;->mWhiteAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V

    .line 1739
    iget-object v2, p0, Lcom/android/server/PowerGuruService;->mHandler:Lcom/android/server/PowerGuruService$InternalHandler;

    iget-object v3, p0, Lcom/android/server/PowerGuruService;->mHandler:Lcom/android/server/PowerGuruService$InternalHandler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/server/PowerGuruService$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/PowerGuruService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1741
    const/4 v2, 0x1

    return v2
.end method

.method public getBeatList()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/PowerGuruAlarmInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1702
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1703
    .local v7, "beatList":Ljava/util/List;, "Ljava/util/List<Landroid/app/PowerGuruAlarmInfo;>;"
    iget-object v10, p0, Lcom/android/server/PowerGuruService;->mHeartbeatListLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1704
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerGuruService;->mHeartbeatAlarmList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/PowerGuruService$AlarmInfo;

    .line 1705
    .local v9, "item":Lcom/android/server/PowerGuruService$AlarmInfo;
    new-instance v0, Landroid/app/PowerGuruAlarmInfo;

    iget-object v1, v9, Lcom/android/server/PowerGuruService$AlarmInfo;->packageName:Ljava/lang/String;

    iget-object v2, v9, Lcom/android/server/PowerGuruService$AlarmInfo;->action:Ljava/lang/String;

    iget-object v3, v9, Lcom/android/server/PowerGuruService$AlarmInfo;->componentName:Ljava/lang/String;

    iget v4, v9, Lcom/android/server/PowerGuruService$AlarmInfo;->type:I

    iget-boolean v5, v9, Lcom/android/server/PowerGuruService$AlarmInfo;->isFromGms:Z

    iget-boolean v6, v9, Lcom/android/server/PowerGuruService$AlarmInfo;->isAvailable:Z

    invoke-direct/range {v0 .. v6}, Landroid/app/PowerGuruAlarmInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1709
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "item":Lcom/android/server/PowerGuruService$AlarmInfo;
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1708
    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/PowerGuruService;->mHeartbeatListUpdate:Z

    .line 1709
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1710
    return-object v7
.end method

.method public getWhiteCandicateList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1748
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1750
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/PowerGuruService;->mCandicateWhiteList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1751
    .local v2, "s":Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1753
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWhiteCandicateList,cur size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V

    .line 1754
    return-object v0
.end method

.method public getWhiteList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1717
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1719
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/PowerGuruService;->mWhiteAppList:Ljava/util/List;

    monitor-enter v4

    .line 1720
    :try_start_0
    iget-object v3, p0, Lcom/android/server/PowerGuruService;->mWhiteAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1721
    .local v2, "s":Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1723
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "s":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1724
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWhiteList,size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V

    .line 1725
    return-object v0
.end method

.method public notifyPowerguruAlarm(IJJJJJLandroid/app/PendingIntent;)Z
    .locals 18
    .param p1, "type"    # I
    .param p2, "when"    # J
    .param p4, "whenElapsed"    # J
    .param p6, "windowLength"    # J
    .param p8, "maxWhen"    # J
    .param p10, "interval"    # J
    .param p12, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 1689
    :try_start_0
    new-instance v3, Lcom/android/server/PowerGuruService$AlarmInfo;

    move-object/from16 v4, p0

    move/from16 v5, p1

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    move-object/from16 v16, p12

    invoke-direct/range {v3 .. v16}, Lcom/android/server/PowerGuruService$AlarmInfo;-><init>(Lcom/android/server/PowerGuruService;IJJJJJLandroid/app/PendingIntent;)V

    .line 1692
    .local v3, "alarm":Lcom/android/server/PowerGuruService$AlarmInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/PowerGuruService;->mHandler:Lcom/android/server/PowerGuruService$InternalHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/PowerGuruService;->mHandler:Lcom/android/server/PowerGuruService$InternalHandler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v3}, Lcom/android/server/PowerGuruService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/PowerGuruService$InternalHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1697
    .end local v3    # "alarm":Lcom/android/server/PowerGuruService$AlarmInfo;
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 1693
    :catch_0
    move-exception v2

    .line 1694
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unkown Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public remove(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 1799
    return-void
.end method

.method public setAlarm(IJJJJJLandroid/app/PendingIntent;)V
    .locals 18
    .param p1, "type"    # I
    .param p2, "triggerAtTime"    # J
    .param p4, "whenElapsed"    # J
    .param p6, "windowLength"    # J
    .param p8, "maxWhen"    # J
    .param p10, "interval"    # J
    .param p12, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 1789
    :try_start_0
    new-instance v3, Lcom/android/server/PowerGuruService$AlarmInfo;

    move-object/from16 v4, p0

    move/from16 v5, p1

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    move-object/from16 v16, p12

    invoke-direct/range {v3 .. v16}, Lcom/android/server/PowerGuruService$AlarmInfo;-><init>(Lcom/android/server/PowerGuruService;IJJJJJLandroid/app/PendingIntent;)V

    .line 1792
    .local v3, "alarm":Lcom/android/server/PowerGuruService$AlarmInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/PowerGuruService;->mHandler:Lcom/android/server/PowerGuruService$InternalHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/PowerGuruService;->mHandler:Lcom/android/server/PowerGuruService$InternalHandler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v3}, Lcom/android/server/PowerGuruService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/PowerGuruService$InternalHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1796
    .end local v3    # "alarm":Lcom/android/server/PowerGuruService$AlarmInfo;
    :goto_0
    return-void

    .line 1793
    :catch_0
    move-exception v2

    .line 1794
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unkown Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public testHello()V
    .locals 2

    .prologue
    .line 1681
    const-string v0, "PowerGuruService"

    const-string v1, ">>>hello this is PowerGuruManagerService<<<"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    return-void
.end method
