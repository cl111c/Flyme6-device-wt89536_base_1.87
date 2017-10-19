.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x151fa7bdc00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

.field private static final MOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.MountService$Lifecycle"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 188
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SystemServer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private createSystemContext()V
    .locals 3

    .prologue
    .line 366
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 367
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 368
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, 0x103013f

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 369
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 182
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 183
    return-void
.end method

.method private performPendingShutdown()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 349
    const-string v4, "sys.shutdown.requested"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 351
    .local v2, "shutdownAction":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 352
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_0

    move v1, v3

    .line 355
    .local v1, "reboot":Z
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_2

    .line 356
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, "reason":Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    invoke-static {v3, v1, v0}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    .line 363
    .end local v0    # "reason":Ljava/lang/String;
    .end local v1    # "reboot":Z
    :cond_1
    return-void

    .line 358
    .restart local v1    # "reboot":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "reason":Ljava/lang/String;
    goto :goto_0
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 344
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 346
    return-void
.end method

.method private run()V
    .locals 13

    .prologue
    .line 211
    const-string v0, "persist.sys.language"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v9

    .line 214
    .local v9, "languageTag":Ljava/lang/String;
    const-string v0, "persist.sys.locale"

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v0, "persist.sys.language"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v0, "persist.sys.country"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v0, "persist.sys.localevar"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .end local v9    # "languageTag":Ljava/lang/String;
    :cond_0
    const-string v0, "SystemServer"

    const-string v1, "Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/16 v0, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 231
    const-string v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 236
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    .line 237
    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    const-wide/32 v2, 0x36ee80

    const-wide/32 v4, 0x36ee80

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 246
    :cond_1
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 250
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 254
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 258
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 261
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 264
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 266
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 267
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 270
    new-instance v6, Ljava/io/File;

    const-string v0, "/cache/recovery/command"

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 271
    .local v6, "COMMAND_FILE":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 273
    const/4 v10, 0x0

    .line 275
    .local v10, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    const-string v1, "/cache/recovery/command"

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v11, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .local v11, "reader":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 278
    .local v7, "cacheStr":Ljava/lang/String;
    :cond_2
    :goto_0
    :try_start_1
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 279
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cacheStr equals "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 280
    if-nez v7, :cond_6

    .line 292
    if-eqz v11, :cond_3

    .line 293
    :try_start_2
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 303
    .end local v7    # "cacheStr":Ljava/lang/String;
    .end local v11    # "reader":Ljava/io/BufferedReader;
    :cond_3
    :goto_1
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 307
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 310
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 313
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 314
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 318
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 319
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 320
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V

    .line 322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v2, 0x151fa7bdc00L

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 323
    const-string v0, "SystemServer"

    const-string v1, "<fj>set System clock is 2016.1.1, EARLIEST_SUPPORTED_TIME value:1451606400000"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const-wide v0, 0x151fa7bdc00L

    invoke-static {v0, v1}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    .line 334
    :cond_4
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 335
    const-string v0, "SystemServer"

    const-string v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_5
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 340
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    .restart local v7    # "cacheStr":Ljava/lang/String;
    .restart local v11    # "reader":Ljava/io/BufferedReader;
    :cond_6
    :try_start_4
    const-string v0, "update_package"

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "recovery"

    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_0

    .line 288
    :catch_0
    move-exception v12

    move-object v10, v11

    .line 289
    .end local v7    # "cacheStr":Ljava/lang/String;
    .end local v11    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    .local v12, "unused":Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v0, "SystemServer"

    const-string v1, "IOException when reading \"/cache/recovery/command\"."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 292
    if-eqz v10, :cond_3

    .line 293
    :try_start_6
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 295
    :catch_1
    move-exception v12

    .line 296
    const-string v0, "SystemServer"

    const-string v1, "reader close error"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 295
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .end local v12    # "unused":Ljava/io/IOException;
    .restart local v7    # "cacheStr":Ljava/lang/String;
    .restart local v11    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v12

    .line 296
    .restart local v12    # "unused":Ljava/io/IOException;
    const-string v0, "SystemServer"

    const-string v1, "reader close error"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 291
    .end local v7    # "cacheStr":Ljava/lang/String;
    .end local v11    # "reader":Ljava/io/BufferedReader;
    .end local v12    # "unused":Ljava/io/IOException;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v0

    .line 292
    :goto_3
    if-eqz v10, :cond_7

    .line 293
    :try_start_7
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 297
    :cond_7
    :goto_4
    throw v0

    .line 295
    :catch_3
    move-exception v12

    .line 296
    .restart local v12    # "unused":Ljava/io/IOException;
    const-string v1, "SystemServer"

    const-string v2, "reader close error"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 327
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .end local v12    # "unused":Ljava/io/IOException;
    :catch_4
    move-exception v8

    .line 328
    .local v8, "ex":Ljava/lang/Throwable;
    const-string v0, "System"

    const-string v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-string v0, "System"

    const-string v1, "************ Failure starting system services"

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    throw v8

    .line 291
    .end local v8    # "ex":Ljava/lang/Throwable;
    .restart local v7    # "cacheStr":Ljava/lang/String;
    .restart local v11    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v0

    move-object v10, v11

    .end local v11    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 288
    .end local v7    # "cacheStr":Ljava/lang/String;
    :catch_5
    move-exception v12

    goto :goto_2
.end method

.method private startBootstrapServices()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 382
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/Installer;

    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/Installer;

    .line 385
    .local v1, "installer":Lcom/android/server/pm/Installer;
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 387
    iget-object v3, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 388
    iget-object v3, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v1}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 394
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService;

    iput-object v3, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 398
    iget-object v3, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 401
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/lights/LightsService;

    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 405
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/DisplayManagerService;

    iput-object v3, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 408
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x64

    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 411
    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, "cryptState":Ljava/lang/String;
    const-string v3, "trigger_restart_min_framework"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 413
    const-string v3, "SystemServer"

    const-string v5, "Detected encryption in progress - only parsing core apps"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iput-boolean v4, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 420
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->isSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 421
    const-string v3, "SystemServer"

    const-string v5, "Regionalization Service"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    new-instance v2, Lcom/android/server/os/RegionalizationService;

    invoke-direct {v2}, Lcom/android/server/os/RegionalizationService;-><init>()V

    .line 423
    .local v2, "regionalizationService":Lcom/android/server/os/RegionalizationService;
    const-string v3, "regionalization"

    invoke-static {v3, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 427
    .end local v2    # "regionalizationService":Lcom/android/server/os/RegionalizationService;
    :cond_1
    const-string v3, "SystemServer"

    const-string v5, "Package Manager"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v3, :cond_3

    move v3, v4

    :goto_1
    iget-boolean v4, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v5, v1, v3, v4}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 430
    iget-object v3, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 431
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 433
    const-string v3, "SystemServer"

    const-string v4, "User Service"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const-string v3, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 437
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 440
    iget-object v3, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 444
    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    .line 445
    return-void

    .line 415
    :cond_2
    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 416
    const-string v3, "SystemServer"

    const-string v5, "Device encrypted - only parsing core apps"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iput-boolean v4, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto :goto_0

    .line 428
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private startCoreServices()V
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 455
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 456
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 459
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getUsageStatsIfNoPackageUsageInfo()V

    .line 462
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 463
    return-void
.end method

.method private startOtherServices()V
    .locals 104

    .prologue
    .line 470
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 471
    .local v3, "context":Landroid/content/Context;
    const/16 v30, 0x0

    .line 472
    .local v30, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v45, 0x0

    .line 473
    .local v45, "contentService":Lcom/android/server/content/ContentService;
    const/16 v97, 0x0

    .line 474
    .local v97, "vibrator":Lcom/android/server/VibratorService;
    const/16 v32, 0x0

    .line 475
    .local v32, "alarm":Landroid/app/IAlarmManager;
    const/16 v76, 0x0

    .line 476
    .local v76, "mountService":Landroid/os/storage/IMountService;
    const/4 v7, 0x0

    .line 477
    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v6, 0x0

    .line 478
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v77, 0x0

    .line 479
    .local v77, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v41, 0x0

    .line 480
    .local v41, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v78, 0x0

    .line 481
    .local v78, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v89, 0x0

    .line 482
    .local v89, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v103, 0x0

    .line 483
    .local v103, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v96, 0x0

    .line 484
    .local v96, "usb":Lcom/android/server/usb/UsbService;
    const/16 v87, 0x0

    .line 485
    .local v87, "serial":Lcom/android/server/SerialService;
    const/16 v81, 0x0

    .line 486
    .local v81, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v38, 0x0

    .line 487
    .local v38, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v61, 0x0

    .line 488
    .local v61, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v92, 0x0

    .line 489
    .local v92, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v43, 0x0

    .line 490
    .local v43, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v35, 0x0

    .line 491
    .local v35, "audioService":Lcom/android/server/audio/AudioService;
    const/16 v75, 0x0

    .line 492
    .local v75, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v57, 0x0

    .line 493
    .local v57, "entropyMixer":Lcom/android/server/EntropyMixer;
    const/16 v37, 0x0

    .line 495
    .local v37, "cameraService":Lcom/android/server/camera/CameraService;
    const/16 v68, 0x0

    .line 496
    .local v68, "mCmAutoStartService":Lcom/android/server/phonekeeper/CmAutoStartService;
    const/16 v70, 0x0

    .line 501
    .local v70, "mCmIpTableService":Lcom/android/server/phonekeeper/CmIpTableService;
    const/16 v84, 0x0

    .line 504
    .local v84, "powerguru":Lcom/android/server/PowerGuruService;
    const-string v4, "config.disable_storage"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v54

    .line 505
    .local v54, "disableStorage":Z
    const-string v4, "config.disable_bluetooth"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    .line 506
    .local v49, "disableBluetooth":Z
    const-string v4, "config.disable_location"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v50

    .line 507
    .local v50, "disableLocation":Z
    const-string v4, "config.disable_systemui"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v55

    .line 508
    .local v55, "disableSystemUI":Z
    const-string v4, "config.disable_noncore"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v53

    .line 509
    .local v53, "disableNonCoreServices":Z
    const-string v4, "config.disable_network"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v51

    .line 510
    .local v51, "disableNetwork":Z
    const-string v4, "config.disable_networktime"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v52

    .line 511
    .local v52, "disableNetworkTime":Z
    const-string v4, "ro.kernel.qemu"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    .line 512
    .local v63, "isEmulator":Z
    const-string v4, "config.disable_atlas"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v48

    .line 515
    .local v48, "disableAtlas":Z
    :try_start_0
    const-string v4, "SystemServer"

    const-string v5, "Reading configuration..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 518
    const-string v4, "SystemServer"

    const-string v5, "Scheduling Policy"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const-string v4, "scheduling_policy"

    new-instance v5, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v5}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 521
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 523
    const-string v4, "SystemServer"

    const-string v5, "Telephony Registry"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    new-instance v93, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v93

    invoke-direct {v0, v3}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3f

    .line 525
    .end local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v93, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_1
    const-string v4, "telephony.registry"

    move-object/from16 v0, v93

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 527
    const-string v4, "SystemServer"

    const-string v5, "Entropy Mixer"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    new-instance v58, Lcom/android/server/EntropyMixer;

    move-object/from16 v0, v58

    invoke-direct {v0, v3}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_40

    .line 530
    .end local v57    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .local v58, "entropyMixer":Lcom/android/server/EntropyMixer;
    :try_start_2
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 532
    const-string v4, "SystemServer"

    const-string v5, "Camera Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/camera/CameraService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 538
    :try_start_3
    const-string v4, "SystemServer"

    const-string v5, "Account Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    new-instance v31, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v31

    invoke-direct {v0, v3}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 540
    .end local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v31, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_4
    const-string v4, "account"

    move-object/from16 v0, v31

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_49
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_41

    move-object/from16 v30, v31

    .line 546
    .end local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_0
    :try_start_5
    const-string v4, "SystemServer"

    const-string v5, "CmAutoStartService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    new-instance v69, Lcom/android/server/phonekeeper/CmAutoStartService;

    move-object/from16 v0, v69

    invoke-direct {v0, v3}, Lcom/android/server/phonekeeper/CmAutoStartService;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 548
    .end local v68    # "mCmAutoStartService":Lcom/android/server/phonekeeper/CmAutoStartService;
    .local v69, "mCmAutoStartService":Lcom/android/server/phonekeeper/CmAutoStartService;
    :try_start_6
    const-string v4, "cmautostart"

    move-object/from16 v0, v69

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_48
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_42

    move-object/from16 v68, v69

    .line 553
    .end local v69    # "mCmAutoStartService":Lcom/android/server/phonekeeper/CmAutoStartService;
    .restart local v68    # "mCmAutoStartService":Lcom/android/server/phonekeeper/CmAutoStartService;
    :goto_1
    :try_start_7
    const-string v4, "SystemServer"

    const-string v5, "CmIpTableService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    new-instance v71, Lcom/android/server/phonekeeper/CmIpTableService;

    move-object/from16 v0, v71

    invoke-direct {v0, v3}, Lcom/android/server/phonekeeper/CmIpTableService;-><init>(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    .line 555
    .end local v70    # "mCmIpTableService":Lcom/android/server/phonekeeper/CmIpTableService;
    .local v71, "mCmIpTableService":Lcom/android/server/phonekeeper/CmIpTableService;
    :try_start_8
    const-string v4, "cmiptable"

    move-object/from16 v0, v71

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_47
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_43

    move-object/from16 v70, v71

    .line 560
    .end local v71    # "mCmIpTableService":Lcom/android/server/phonekeeper/CmIpTableService;
    .restart local v70    # "mCmIpTableService":Lcom/android/server/phonekeeper/CmIpTableService;
    :goto_2
    :try_start_9
    const-string v4, "SystemServer"

    const-string v5, "Content Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_26

    const/4 v4, 0x1

    :goto_3
    invoke-static {v3, v4}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v45

    .line 564
    const-string v4, "SystemServer"

    const-string v5, "System Content Providers"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 567
    const-string v4, "SystemServer"

    const-string v5, "Vibrator Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    new-instance v98, Lcom/android/server/VibratorService;

    move-object/from16 v0, v98

    invoke-direct {v0, v3}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1

    .line 569
    .end local v97    # "vibrator":Lcom/android/server/VibratorService;
    .local v98, "vibrator":Lcom/android/server/VibratorService;
    :try_start_a
    const-string v4, "vibrator"

    move-object/from16 v0, v98

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 571
    const-string v4, "SystemServer"

    const-string v5, "Consumer IR Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    new-instance v44, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v44

    invoke-direct {v0, v3}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_44

    .line 573
    .end local v43    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v44, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_b
    const-string v4, "consumer_ir"

    move-object/from16 v0, v44

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 577
    const-string v4, "SystemServer"

    const-string v5, "PowerGuru Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    new-instance v85, Lcom/android/server/PowerGuruService;

    move-object/from16 v0, v85

    invoke-direct {v0, v3}, Lcom/android/server/PowerGuruService;-><init>(Landroid/content/Context;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_45

    .line 579
    .end local v84    # "powerguru":Lcom/android/server/PowerGuruService;
    .local v85, "powerguru":Lcom/android/server/PowerGuruService;
    :try_start_c
    const-string v4, "powerguru"

    move-object/from16 v0, v85

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 582
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 583
    const-string v4, "alarm"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v32

    .line 586
    const-string v4, "SystemServer"

    const-string v5, "Init Watchdog"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v102

    .line 588
    .local v102, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v102

    invoke-virtual {v0, v3, v4}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 590
    const-string v4, "SystemServer"

    const-string v5, "Input Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    new-instance v62, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v62

    invoke-direct {v0, v3}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_46

    .line 593
    .end local v61    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v62, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_d
    const-string v4, "SystemServer"

    const-string v5, "Window Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_27

    const/4 v4, 0x1

    move v5, v4

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-nez v4, :cond_28

    const/4 v4, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move-object/from16 v0, v62

    invoke-static {v3, v0, v5, v4, v8}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v103

    .line 597
    const-string v4, "window"

    move-object/from16 v0, v103

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 598
    const-string v4, "input"

    move-object/from16 v0, v62

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 600
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v103

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 602
    invoke-virtual/range {v103 .. v103}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v4

    move-object/from16 v0, v62

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 603
    invoke-virtual/range {v62 .. v62}, Lcom/android/server/input/InputManagerService;->start()V

    .line 606
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 611
    if-eqz v63, :cond_29

    .line 612
    const-string v4, "SystemServer"

    const-string v5, "No Bluetooh Service (emulator)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_4

    :goto_6
    move-object/from16 v84, v85

    .end local v85    # "powerguru":Lcom/android/server/PowerGuruService;
    .restart local v84    # "powerguru":Lcom/android/server/PowerGuruService;
    move-object/from16 v57, v58

    .end local v58    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v57    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v43, v44

    .end local v44    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v43    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v92, v93

    .end local v93    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v61, v62

    .end local v62    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v61    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v97, v98

    .line 629
    .end local v98    # "vibrator":Lcom/android/server/VibratorService;
    .end local v102    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v97    # "vibrator":Lcom/android/server/VibratorService;
    :goto_7
    const/16 v90, 0x0

    .line 630
    .local v90, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v83, 0x0

    .line 631
    .local v83, "notification":Landroid/app/INotificationManager;
    const/16 v59, 0x0

    .line 632
    .local v59, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v100, 0x0

    .line 633
    .local v100, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    const/16 v64, 0x0

    .line 634
    .local v64, "location":Lcom/android/server/LocationManagerService;
    const/16 v46, 0x0

    .line 635
    .local v46, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v94, 0x0

    .line 636
    .local v94, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v66, 0x0

    .line 637
    .local v66, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v33, 0x0

    .line 638
    .local v33, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v72, 0x0

    .line 641
    .local v72, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 643
    :try_start_e
    const-string v4, "SystemServer"

    const-string v5, "Input Method Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    new-instance v60, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v60

    move-object/from16 v1, v103

    invoke-direct {v0, v3, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5

    .line 645
    .end local v59    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v60, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_f
    const-string v4, "input_method"

    move-object/from16 v0, v60

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_3e

    move-object/from16 v59, v60

    .line 651
    .end local v60    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v59    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_8
    :try_start_10
    const-string v4, "SystemServer"

    const-string v5, "Accessibility Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const-string v4, "accessibility"

    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_6

    .line 660
    :cond_0
    :goto_9
    :try_start_11
    invoke-virtual/range {v103 .. v103}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_7

    .line 665
    :goto_a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 666
    if-nez v54, :cond_1

    const-string v4, "0"

    const-string v5, "system_init.startmountservice"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 673
    :try_start_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.MountService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 674
    const-string v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_8

    move-result-object v76

    .line 684
    :cond_1
    :goto_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 687
    :try_start_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->performBootDexOpt()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_9

    .line 693
    :goto_c
    :try_start_14
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x1040386

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v8, 0x0

    invoke-interface {v4, v5, v8}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_3d

    .line 700
    :goto_d
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2f

    .line 701
    if-nez v53, :cond_3

    .line 703
    :try_start_15
    const-string v4, "SystemServer"

    const-string v5, "LockSettingsService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    new-instance v67, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v67

    invoke-direct {v0, v3}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_a

    .line 705
    .end local v66    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v67, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_16
    const-string v4, "lock_settings"

    move-object/from16 v0, v67

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_3c

    move-object/from16 v66, v67

    .line 710
    .end local v67    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v66    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_e
    const-string v4, "ro.frp.pst"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 711
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 714
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 718
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 721
    :cond_3
    if-nez v55, :cond_4

    .line 723
    :try_start_17
    const-string v4, "SystemServer"

    const-string v5, "Status Bar"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    new-instance v91, Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, v91

    move-object/from16 v1, v103

    invoke-direct {v0, v3, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_b

    .line 725
    .end local v90    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v91, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_18
    const-string v4, "statusbar"

    move-object/from16 v0, v91

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_3b

    move-object/from16 v90, v91

    .line 731
    .end local v91    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v90    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_4
    :goto_f
    if-nez v53, :cond_5

    .line 733
    :try_start_19
    const-string v4, "SystemServer"

    const-string v5, "Clipboard Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    const-string v4, "clipboard"

    new-instance v5, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v5, v3}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_c

    .line 741
    :cond_5
    :goto_10
    if-nez v51, :cond_6

    .line 743
    :try_start_1a
    const-string v4, "SystemServer"

    const-string v5, "NetworkManagement Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    invoke-static {v3}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v7

    .line 745
    const-string v4, "network_management"

    invoke-static {v4, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_d

    .line 751
    :cond_6
    :goto_11
    if-nez v53, :cond_7

    .line 753
    :try_start_1b
    const-string v4, "SystemServer"

    const-string v5, "Text Service Manager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    new-instance v95, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v95

    invoke-direct {v0, v3}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_e

    .line 755
    .end local v94    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v95, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_1c
    const-string v4, "textservices"

    move-object/from16 v0, v95

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_3a

    move-object/from16 v94, v95

    .line 761
    .end local v95    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v94    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_7
    :goto_12
    if-nez v51, :cond_2e

    .line 763
    :try_start_1d
    const-string v4, "SystemServer"

    const-string v5, "Network Score Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    new-instance v79, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v79

    invoke-direct {v0, v3}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_f

    .line 765
    .end local v78    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v79, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_1e
    const-string v4, "network_score"

    move-object/from16 v0, v79

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_39

    move-object/from16 v78, v79

    .line 771
    .end local v79    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v78    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_13
    :try_start_1f
    const-string v4, "SystemServer"

    const-string v5, "NetworkStats Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    new-instance v80, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v80

    move-object/from16 v1, v32

    invoke-direct {v0, v3, v7, v1}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_10

    .line 773
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v80, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_20
    const-string v4, "netstats"

    move-object/from16 v0, v80

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_38

    move-object/from16 v6, v80

    .line 779
    .end local v80    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_14
    :try_start_21
    const-string v4, "SystemServer"

    const-string v5, "NetworkPolicy Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Landroid/os/IPowerManager;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_11

    .line 784
    .end local v77    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v2, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_22
    const-string v4, "netpolicy"

    invoke-static {v4, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_37

    .line 789
    :goto_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 790
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.WifiService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 791
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.WifiScanningService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 794
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.RttService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 796
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.ethernet"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 798
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 802
    :cond_9
    :try_start_23
    const-string v4, "SystemServer"

    const-string v5, "Connectivity Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    new-instance v42, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v42

    invoke-direct {v0, v3, v7, v6, v2}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_12

    .line 805
    .end local v41    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v42, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_24
    const-string v4, "connectivity"

    move-object/from16 v0, v42

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 806
    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 807
    move-object/from16 v0, v42

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_36

    move-object/from16 v41, v42

    .line 813
    .end local v42    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v41    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_16
    :try_start_25
    const-string v4, "SystemServer"

    const-string v5, "Network Service Discovery Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    invoke-static {v3}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v89

    .line 815
    const-string v4, "servicediscovery"

    move-object/from16 v0, v89

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_13

    .line 822
    :goto_17
    if-nez v53, :cond_a

    .line 824
    :try_start_26
    const-string v4, "SystemServer"

    const-string v5, "UpdateLock Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    const-string v4, "updatelock"

    new-instance v5, Lcom/android/server/UpdateLockService;

    invoke-direct {v5, v3}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_14

    .line 837
    :cond_a
    :goto_18
    if-eqz v76, :cond_b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v4, :cond_b

    .line 839
    :try_start_27
    invoke-interface/range {v76 .. v76}, Landroid/os/storage/IMountService;->waitForAsecScan()V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_27} :catch_2d

    .line 845
    :cond_b
    :goto_19
    if-eqz v30, :cond_c

    .line 846
    :try_start_28
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_15

    .line 852
    :cond_c
    :goto_1a
    if-eqz v45, :cond_d

    .line 853
    :try_start_29
    invoke-virtual/range {v45 .. v45}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_16

    .line 858
    :cond_d
    :goto_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 859
    const-string v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v83

    .line 861
    move-object/from16 v0, v83

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    .line 863
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 865
    if-nez v50, :cond_e

    .line 867
    :try_start_2a
    const-string v4, "SystemServer"

    const-string v5, "Location Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    new-instance v65, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v65

    invoke-direct {v0, v3}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_17

    .line 869
    .end local v64    # "location":Lcom/android/server/LocationManagerService;
    .local v65, "location":Lcom/android/server/LocationManagerService;
    :try_start_2b
    const-string v4, "location"

    move-object/from16 v0, v65

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_35

    move-object/from16 v64, v65

    .line 875
    .end local v65    # "location":Lcom/android/server/LocationManagerService;
    .restart local v64    # "location":Lcom/android/server/LocationManagerService;
    :goto_1c
    :try_start_2c
    const-string v4, "SystemServer"

    const-string v5, "Country Detector"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    new-instance v47, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v47

    invoke-direct {v0, v3}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_18

    .line 877
    .end local v46    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v47, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_2d
    const-string v4, "country_detector"

    move-object/from16 v0, v47

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_34

    move-object/from16 v46, v47

    .line 883
    .end local v47    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v46    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_e
    :goto_1d
    if-nez v53, :cond_f

    .line 885
    :try_start_2e
    const-string v4, "SystemServer"

    const-string v5, "Search Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    const-string v4, "search"

    new-instance v5, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_19

    .line 894
    :cond_f
    :goto_1e
    :try_start_2f
    const-string v4, "SystemServer"

    const-string v5, "DropBox Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    const-string v4, "dropbox"

    new-instance v5, Lcom/android/server/DropBoxManagerService;

    new-instance v8, Ljava/io/File;

    const-string v9, "/data/system/dropbox"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v3, v8}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_1a

    .line 901
    :goto_1f
    if-nez v53, :cond_10

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x112004e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 904
    :try_start_30
    const-string v4, "SystemServer"

    const-string v5, "Wallpaper Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    new-instance v101, Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v0, v101

    invoke-direct {v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_1b

    .line 906
    .end local v100    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v101, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :try_start_31
    const-string v4, "wallpaper"

    move-object/from16 v0, v101

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_33

    move-object/from16 v100, v101

    .line 913
    .end local v101    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v100    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_10
    :goto_20
    :try_start_32
    const-string v4, "SystemServer"

    const-string v5, "Audio Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    new-instance v36, Lcom/android/server/audio/AudioService;

    move-object/from16 v0, v36

    invoke-direct {v0, v3}, Lcom/android/server/audio/AudioService;-><init>(Landroid/content/Context;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_1c

    .line 915
    .end local v35    # "audioService":Lcom/android/server/audio/AudioService;
    .local v36, "audioService":Lcom/android/server/audio/AudioService;
    :try_start_33
    const-string v4, "audio"

    move-object/from16 v0, v36

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_32

    move-object/from16 v35, v36

    .line 920
    .end local v36    # "audioService":Lcom/android/server/audio/AudioService;
    .restart local v35    # "audioService":Lcom/android/server/audio/AudioService;
    :goto_21
    if-nez v53, :cond_11

    .line 921
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DockObserver;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 925
    :cond_11
    :try_start_34
    const-string v4, "SystemServer"

    const-string v5, "Wired Accessory Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    new-instance v4, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v61

    invoke-direct {v4, v3, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v61

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1d

    .line 933
    :goto_22
    if-nez v53, :cond_15

    .line 934
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.midi"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 936
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 939
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.accessory"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 943
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 947
    :cond_14
    :try_start_35
    const-string v4, "SystemServer"

    const-string v5, "Serial Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    new-instance v88, Lcom/android/server/SerialService;

    move-object/from16 v0, v88

    invoke-direct {v0, v3}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1e

    .line 950
    .end local v87    # "serial":Lcom/android/server/SerialService;
    .local v88, "serial":Lcom/android/server/SerialService;
    :try_start_36
    const-string v4, "serial"

    move-object/from16 v0, v88

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_31

    move-object/from16 v87, v88

    .line 956
    .end local v88    # "serial":Lcom/android/server/SerialService;
    .restart local v87    # "serial":Lcom/android/server/SerialService;
    :cond_15
    :goto_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 958
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 960
    if-nez v53, :cond_19

    .line 961
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.backup"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 962
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 965
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.app_widgets"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 966
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 969
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.voice_recognizers"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 970
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 973
    :cond_18
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 974
    const-string v4, "SystemServer"

    const-string v5, "Gesture Launcher Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 980
    :cond_19
    :try_start_37
    const-string v4, "SystemServer"

    const-string v5, "DiskStats Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    const-string v4, "diskstats"

    new-instance v5, Lcom/android/server/DiskStatsService;

    invoke-direct {v5, v3}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_1f

    .line 991
    :goto_24
    :try_start_38
    const-string v4, "SystemServer"

    const-string v5, "SamplingProfiler Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    const-string v4, "samplingprofiler"

    new-instance v5, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v5, v3}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_20

    .line 998
    :goto_25
    if-nez v51, :cond_1a

    if-nez v52, :cond_1a

    .line 1000
    :try_start_39
    const-string v4, "SystemServer"

    const-string v5, "NetworkTimeUpdateService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    new-instance v82, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v82

    invoke-direct {v0, v3}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_21

    .end local v81    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v82, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v81, v82

    .line 1008
    .end local v82    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v81    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_1a
    :goto_26
    :try_start_3a
    const-string v4, "SystemServer"

    const-string v5, "CommonTimeManagementService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    new-instance v39, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v39

    invoke-direct {v0, v3}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_22

    .line 1010
    .end local v38    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v39, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_3b
    const-string v4, "commontime_management"

    move-object/from16 v0, v39

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_30

    move-object/from16 v38, v39

    .line 1015
    .end local v39    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v38    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :goto_27
    if-nez v51, :cond_1b

    .line 1017
    :try_start_3c
    const-string v4, "SystemServer"

    const-string v5, "CertBlacklister"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    new-instance v4, Lcom/android/server/CertBlacklister;

    invoke-direct {v4, v3}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_23

    .line 1024
    :cond_1b
    :goto_28
    if-nez v53, :cond_1c

    .line 1026
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1029
    :cond_1c
    if-nez v53, :cond_1d

    if-nez v48, :cond_1d

    .line 1031
    :try_start_3d
    const-string v4, "SystemServer"

    const-string v5, "Assets Atlas Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    new-instance v34, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v34

    invoke-direct {v0, v3}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_24

    .line 1033
    .end local v33    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v34, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_3e
    const-string v4, "assetatlas"

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_2f

    move-object/from16 v33, v34

    .line 1039
    .end local v34    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v33    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_1d
    :goto_29
    if-nez v53, :cond_1e

    .line 1040
    const-string v4, "graphicsstats"

    new-instance v5, Lcom/android/server/GraphicsStatsService;

    invoke-direct {v5, v3}, Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1044
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.print"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1045
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.print.PrintManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1048
    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1050
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1052
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.hdmi.cec"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1053
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1056
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.live_tv"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1057
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1060
    :cond_21
    if-nez v53, :cond_22

    .line 1062
    :try_start_3f
    const-string v4, "SystemServer"

    const-string v5, "Media Router Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    new-instance v73, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v73

    invoke-direct {v0, v3}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_25

    .line 1064
    .end local v72    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v73, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_40
    const-string v4, "media_router"

    move-object/from16 v0, v73

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_2e

    move-object/from16 v72, v73

    .line 1069
    .end local v73    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v72    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1071
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1074
    :try_start_41
    const-string v4, "SystemServer"

    const-string v5, "BackgroundDexOptService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;J)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_26

    .line 1082
    :cond_22
    :goto_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1085
    :goto_2c
    if-nez v53, :cond_23

    .line 1086
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1091
    :cond_23
    invoke-virtual/range {v103 .. v103}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v86

    .line 1092
    .local v86, "safeMode":Z
    if-eqz v86, :cond_2d

    .line 1093
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1095
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1102
    :goto_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v75

    .end local v75    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v75, Lcom/android/server/MmsServiceBroker;

    .line 1107
    .restart local v75    # "mmsService":Lcom/android/server/MmsServiceBroker;
    :try_start_42
    invoke-virtual/range {v97 .. v97}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_27

    .line 1112
    :goto_2e
    if-eqz v66, :cond_24

    .line 1114
    :try_start_43
    invoke-virtual/range {v66 .. v66}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_28

    .line 1121
    :cond_24
    :goto_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1e0

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1123
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1f4

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1126
    :try_start_44
    invoke-virtual/range {v103 .. v103}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_29

    .line 1131
    :goto_30
    if-eqz v86, :cond_25

    .line 1132
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1138
    :cond_25
    invoke-virtual/range {v103 .. v103}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v40

    .line 1139
    .local v40, "config":Landroid/content/res/Configuration;
    new-instance v74, Landroid/util/DisplayMetrics;

    invoke-direct/range {v74 .. v74}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1140
    .local v74, "metrics":Landroid/util/DisplayMetrics;
    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v99

    check-cast v99, Landroid/view/WindowManager;

    .line 1141
    .local v99, "w":Landroid/view/WindowManager;
    invoke-interface/range {v99 .. v99}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object/from16 v0, v74

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1142
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, v40

    move-object/from16 v1, v74

    invoke-virtual {v4, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1146
    :try_start_45
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_2a

    .line 1152
    :goto_31
    :try_start_46
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_2b

    .line 1159
    :goto_32
    :try_start_47
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v86

    invoke-virtual {v4, v0, v5}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_2c

    .line 1165
    :goto_33
    move-object v12, v7

    .line 1166
    .local v12, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object v13, v6

    .line 1167
    .local v13, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object v14, v2

    .line 1168
    .local v14, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v15, v41

    .line 1169
    .local v15, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v11, v78

    .line 1170
    .local v11, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v17, v100

    .line 1171
    .local v17, "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    move-object/from16 v18, v59

    .line 1172
    .local v18, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v20, v64

    .line 1173
    .local v20, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v21, v46

    .line 1174
    .local v21, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v22, v81

    .line 1175
    .local v22, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v23, v38

    .line 1176
    .local v23, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v24, v94

    .line 1177
    .local v24, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v19, v90

    .line 1178
    .local v19, "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    move-object/from16 v25, v33

    .line 1179
    .local v25, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v26, v61

    .line 1180
    .local v26, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v27, v92

    .line 1181
    .local v27, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v28, v72

    .line 1182
    .local v28, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v16, v35

    .line 1183
    .local v16, "audioServiceF":Lcom/android/server/audio/AudioService;
    move-object/from16 v29, v75

    .line 1190
    .local v29, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v8, Lcom/android/server/SystemServer$2;

    move-object/from16 v9, p0

    move-object v10, v3

    invoke-direct/range {v8 .. v29}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/audio/AudioService;Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1315
    return-void

    .line 541
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v11    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v12    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v13    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v14    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v15    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v16    # "audioServiceF":Lcom/android/server/audio/AudioService;
    .end local v17    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local v18    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v19    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v20    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v21    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v22    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v23    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v24    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v25    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v26    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v27    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v28    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v29    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v33    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v40    # "config":Landroid/content/res/Configuration;
    .end local v46    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v57    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v59    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v64    # "location":Lcom/android/server/LocationManagerService;
    .end local v66    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v72    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v74    # "metrics":Landroid/util/DisplayMetrics;
    .end local v83    # "notification":Landroid/app/INotificationManager;
    .end local v86    # "safeMode":Z
    .end local v90    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v94    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v99    # "w":Landroid/view/WindowManager;
    .end local v100    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v58    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v77    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v93    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_0
    move-exception v56

    .line 542
    .local v56, "e":Ljava/lang/Throwable;
    :goto_34
    :try_start_48
    const-string v4, "SystemServer"

    const-string v5, "Failure starting Account Manager"

    move-object/from16 v0, v56

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_48
    .catch Ljava/lang/RuntimeException; {:try_start_48 .. :try_end_48} :catch_1

    goto/16 :goto_0

    .line 624
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v56

    move-object/from16 v57, v58

    .end local v58    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v57    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v92, v93

    .line 625
    .end local v93    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v56, "e":Ljava/lang/RuntimeException;
    .restart local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :goto_35
    const-string v4, "System"

    const-string v5, "******************************************"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const-string v4, "System"

    const-string v5, "************ Failure starting core service"

    move-object/from16 v0, v56

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 549
    .end local v56    # "e":Ljava/lang/RuntimeException;
    .end local v57    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v58    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v93    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_2
    move-exception v56

    .line 550
    .local v56, "e":Ljava/lang/Throwable;
    :goto_36
    :try_start_49
    const-string v4, "SystemServer"

    const-string v5, "Failure starting CmAutoStartService"

    move-object/from16 v0, v56

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 556
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v56

    .line 557
    .restart local v56    # "e":Ljava/lang/Throwable;
    :goto_37
    const-string v4, "SystemServer"

    const-string v5, "Failure starting CmIpTableService"

    move-object/from16 v0, v56

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_49
    .catch Ljava/lang/RuntimeException; {:try_start_49 .. :try_end_49} :catch_1

    goto/16 :goto_2

    .line 561
    .end local v56    # "e":Ljava/lang/Throwable;
    :cond_26
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 594
    .end local v43    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v61    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v84    # "powerguru":Lcom/android/server/PowerGuruService;
    .end local v97    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v44    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v62    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v85    # "powerguru":Lcom/android/server/PowerGuruService;
    .restart local v98    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v102    # "watchdog":Lcom/android/server/Watchdog;
    :cond_27
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_4

    :cond_28
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 613
    :cond_29
    :try_start_4a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2a

    .line 614
    const-string v4, "SystemServer"

    const-string v5, "No Bluetooth Service (factory test)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 624
    :catch_4
    move-exception v56

    move-object/from16 v84, v85

    .end local v85    # "powerguru":Lcom/android/server/PowerGuruService;
    .restart local v84    # "powerguru":Lcom/android/server/PowerGuruService;
    move-object/from16 v57, v58

    .end local v58    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v57    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v43, v44

    .end local v44    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v43    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v92, v93

    .end local v93    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v61, v62

    .end local v62    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v61    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v97, v98

    .end local v98    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v97    # "vibrator":Lcom/android/server/VibratorService;
    goto :goto_35

    .line 615
    .end local v43    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v57    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v61    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v84    # "powerguru":Lcom/android/server/PowerGuruService;
    .end local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v97    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v44    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v58    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v62    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v85    # "powerguru":Lcom/android/server/PowerGuruService;
    .restart local v93    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v98    # "vibrator":Lcom/android/server/VibratorService;
    :cond_2a
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.bluetooth"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2b

    .line 617
    const-string v4, "SystemServer"

    const-string v5, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 618
    :cond_2b
    if-eqz v49, :cond_2c

    .line 619
    const-string v4, "SystemServer"

    const-string v5, "Bluetooth Service disabled by config"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 621
    :cond_2c
    const-string v4, "SystemServer"

    const-string v5, "Bluetooth Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/BluetoothService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_4a
    .catch Ljava/lang/RuntimeException; {:try_start_4a .. :try_end_4a} :catch_4

    goto/16 :goto_6

    .line 646
    .end local v44    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v58    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v62    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v85    # "powerguru":Lcom/android/server/PowerGuruService;
    .end local v93    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v98    # "vibrator":Lcom/android/server/VibratorService;
    .end local v102    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v33    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v43    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v46    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v57    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v59    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v61    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v64    # "location":Lcom/android/server/LocationManagerService;
    .restart local v66    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v72    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v83    # "notification":Landroid/app/INotificationManager;
    .restart local v84    # "powerguru":Lcom/android/server/PowerGuruService;
    .restart local v90    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v94    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v97    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v100    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_5
    move-exception v56

    .line 647
    .restart local v56    # "e":Ljava/lang/Throwable;
    :goto_38
    const-string v4, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 654
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v56

    .line 655
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 661
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v56

    .line 662
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string v4, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 676
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v56

    .line 677
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 688
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v56

    .line 689
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string v4, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 706
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v56

    .line 707
    .restart local v56    # "e":Ljava/lang/Throwable;
    :goto_39
    const-string v4, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 726
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v56

    .line 727
    .restart local v56    # "e":Ljava/lang/Throwable;
    :goto_3a
    const-string v4, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 736
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v56

    .line 737
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 746
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v56

    .line 747
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string v4, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 756
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v56

    .line 757
    .restart local v56    # "e":Ljava/lang/Throwable;
    :goto_3b
    const-string v4, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 766
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v56

    .line 767
    .restart local v56    # "e":Ljava/lang/Throwable;
    :goto_3c
    const-string v4, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 774
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v56

    .line 775
    .restart local v56    # "e":Ljava/lang/Throwable;
    :goto_3d
    const-string v4, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 785
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_11
    move-exception v56

    move-object/from16 v2, v77

    .line 786
    .end local v77    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v56    # "e":Ljava/lang/Throwable;
    :goto_3e
    const-string v4, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 808
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v56

    .line 809
    .restart local v56    # "e":Ljava/lang/Throwable;
    :goto_3f
    const-string v4, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 817
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v56

    .line 818
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 827
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_14
    move-exception v56

    .line 828
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string v4, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 847
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_15
    move-exception v56

    .line 848
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string v4, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 854
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_16
    move-exception v56

    .line 855
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string v4, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 870
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_17
    move-exception v56

    .line 871
    .restart local v56    # "e":Ljava/lang/Throwable;
    :goto_40
    const-string v4, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 878
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_18
    move-exception v56

    .line 879
    .restart local v56    # "e":Ljava/lang/Throwable;
    :goto_41
    const-string v4, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 888
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v56

    .line 889
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 897
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v56

    .line 898
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string v4, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 907
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v56

    .line 908
    .restart local v56    # "e":Ljava/lang/Throwable;
    :goto_42
    const-string v4, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 916
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v56

    .line 917
    .restart local v56    # "e":Ljava/lang/Throwable;
    :goto_43
    const-string v4, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 929
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_1d
    move-exception v56

    .line 930
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string v4, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 951
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v56

    .line 952
    .restart local v56    # "e":Ljava/lang/Throwable;
    :goto_44
    const-string v4, "SystemServer"

    const-string v5, "Failure starting SerialService"

    move-object/from16 v0, v56

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_23

    .line 982
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v56

    .line 983
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string v4, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 994
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_20
    move-exception v56

    .line 995
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string v4, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 1002
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_21
    move-exception v56

    .line 1003
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string v4, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 1011
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_22
    move-exception v56

    .line 1012
    .restart local v56    # "e":Ljava/lang/Throwable;
    :goto_45
    const-string v4, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 1019
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v56

    .line 1020
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string v4, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 1034
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v56

    .line 1035
    .restart local v56    # "e":Ljava/lang/Throwable;
    :goto_46
    const-string v4, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 1065
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v56

    .line 1066
    .restart local v56    # "e":Ljava/lang/Throwable;
    :goto_47
    const-string v4, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 1076
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_26
    move-exception v56

    .line 1077
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string v4, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 1098
    .end local v56    # "e":Ljava/lang/Throwable;
    .restart local v86    # "safeMode":Z
    :cond_2d
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_2d

    .line 1108
    :catch_27
    move-exception v56

    .line 1109
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string v4, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 1115
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_28
    move-exception v56

    .line 1116
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string v4, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 1127
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_29
    move-exception v56

    .line 1128
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string v4, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 1147
    .end local v56    # "e":Ljava/lang/Throwable;
    .restart local v40    # "config":Landroid/content/res/Configuration;
    .restart local v74    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v99    # "w":Landroid/view/WindowManager;
    :catch_2a
    move-exception v56

    .line 1148
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string v4, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 1153
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_2b
    move-exception v56

    .line 1154
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string v4, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 1160
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_2c
    move-exception v56

    .line 1161
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string v4, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 840
    .end local v40    # "config":Landroid/content/res/Configuration;
    .end local v56    # "e":Ljava/lang/Throwable;
    .end local v74    # "metrics":Landroid/util/DisplayMetrics;
    .end local v86    # "safeMode":Z
    .end local v99    # "w":Landroid/view/WindowManager;
    :catch_2d
    move-exception v4

    goto/16 :goto_19

    .line 1065
    .end local v72    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v73    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_2e
    move-exception v56

    move-object/from16 v72, v73

    .end local v73    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v72    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto :goto_47

    .line 1034
    .end local v33    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v34    # "atlas":Lcom/android/server/AssetAtlasService;
    :catch_2f
    move-exception v56

    move-object/from16 v33, v34

    .end local v34    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v33    # "atlas":Lcom/android/server/AssetAtlasService;
    goto :goto_46

    .line 1011
    .end local v38    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v39    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_30
    move-exception v56

    move-object/from16 v38, v39

    .end local v39    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v38    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_45

    .line 951
    .end local v87    # "serial":Lcom/android/server/SerialService;
    .restart local v88    # "serial":Lcom/android/server/SerialService;
    :catch_31
    move-exception v56

    move-object/from16 v87, v88

    .end local v88    # "serial":Lcom/android/server/SerialService;
    .restart local v87    # "serial":Lcom/android/server/SerialService;
    goto/16 :goto_44

    .line 916
    .end local v35    # "audioService":Lcom/android/server/audio/AudioService;
    .restart local v36    # "audioService":Lcom/android/server/audio/AudioService;
    :catch_32
    move-exception v56

    move-object/from16 v35, v36

    .end local v36    # "audioService":Lcom/android/server/audio/AudioService;
    .restart local v35    # "audioService":Lcom/android/server/audio/AudioService;
    goto/16 :goto_43

    .line 907
    .end local v100    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v101    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_33
    move-exception v56

    move-object/from16 v100, v101

    .end local v101    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v100    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    goto/16 :goto_42

    .line 878
    .end local v46    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v47    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catch_34
    move-exception v56

    move-object/from16 v46, v47

    .end local v47    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v46    # "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_41

    .line 870
    .end local v64    # "location":Lcom/android/server/LocationManagerService;
    .restart local v65    # "location":Lcom/android/server/LocationManagerService;
    :catch_35
    move-exception v56

    move-object/from16 v64, v65

    .end local v65    # "location":Lcom/android/server/LocationManagerService;
    .restart local v64    # "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_40

    .line 808
    .end local v41    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v42    # "connectivity":Lcom/android/server/ConnectivityService;
    :catch_36
    move-exception v56

    move-object/from16 v41, v42

    .end local v42    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v41    # "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_3f

    .line 785
    :catch_37
    move-exception v56

    goto/16 :goto_3e

    .line 774
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v77    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v80    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_38
    move-exception v56

    move-object/from16 v6, v80

    .end local v80    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_3d

    .line 766
    .end local v78    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v79    # "networkScore":Lcom/android/server/NetworkScoreService;
    :catch_39
    move-exception v56

    move-object/from16 v78, v79

    .end local v79    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v78    # "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_3c

    .line 756
    .end local v94    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v95    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_3a
    move-exception v56

    move-object/from16 v94, v95

    .end local v95    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v94    # "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_3b

    .line 726
    .end local v90    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v91    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_3b
    move-exception v56

    move-object/from16 v90, v91

    .end local v91    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v90    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_3a

    .line 706
    .end local v66    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v67    # "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_3c
    move-exception v56

    move-object/from16 v66, v67

    .end local v67    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v66    # "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_39

    .line 697
    :catch_3d
    move-exception v4

    goto/16 :goto_d

    .line 646
    .end local v59    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v60    # "imm":Lcom/android/server/InputMethodManagerService;
    :catch_3e
    move-exception v56

    move-object/from16 v59, v60

    .end local v60    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v59    # "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_38

    .line 624
    .end local v33    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v46    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v59    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v64    # "location":Lcom/android/server/LocationManagerService;
    .end local v66    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v72    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v83    # "notification":Landroid/app/INotificationManager;
    .end local v90    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v94    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v100    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_3f
    move-exception v56

    goto/16 :goto_35

    .end local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v93    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_40
    move-exception v56

    move-object/from16 v92, v93

    .end local v93    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_35

    .end local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v57    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v58    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v93    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_41
    move-exception v56

    move-object/from16 v57, v58

    .end local v58    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v57    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v92, v93

    .end local v93    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v30, v31

    .end local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_35

    .end local v57    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v68    # "mCmAutoStartService":Lcom/android/server/phonekeeper/CmAutoStartService;
    .end local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v58    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v69    # "mCmAutoStartService":Lcom/android/server/phonekeeper/CmAutoStartService;
    .restart local v93    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_42
    move-exception v56

    move-object/from16 v68, v69

    .end local v69    # "mCmAutoStartService":Lcom/android/server/phonekeeper/CmAutoStartService;
    .restart local v68    # "mCmAutoStartService":Lcom/android/server/phonekeeper/CmAutoStartService;
    move-object/from16 v57, v58

    .end local v58    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v57    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v92, v93

    .end local v93    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_35

    .end local v57    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v70    # "mCmIpTableService":Lcom/android/server/phonekeeper/CmIpTableService;
    .end local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v58    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v71    # "mCmIpTableService":Lcom/android/server/phonekeeper/CmIpTableService;
    .restart local v93    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_43
    move-exception v56

    move-object/from16 v70, v71

    .end local v71    # "mCmIpTableService":Lcom/android/server/phonekeeper/CmIpTableService;
    .restart local v70    # "mCmIpTableService":Lcom/android/server/phonekeeper/CmIpTableService;
    move-object/from16 v57, v58

    .end local v58    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v57    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v92, v93

    .end local v93    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_35

    .end local v57    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v97    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v58    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v93    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v98    # "vibrator":Lcom/android/server/VibratorService;
    :catch_44
    move-exception v56

    move-object/from16 v57, v58

    .end local v58    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v57    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v92, v93

    .end local v93    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v97, v98

    .end local v98    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v97    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_35

    .end local v43    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v57    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v97    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v44    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v58    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v93    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v98    # "vibrator":Lcom/android/server/VibratorService;
    :catch_45
    move-exception v56

    move-object/from16 v57, v58

    .end local v58    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v57    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v43, v44

    .end local v44    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v43    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v92, v93

    .end local v93    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v97, v98

    .end local v98    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v97    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_35

    .end local v43    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v57    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v84    # "powerguru":Lcom/android/server/PowerGuruService;
    .end local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v97    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v44    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v58    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v85    # "powerguru":Lcom/android/server/PowerGuruService;
    .restart local v93    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v98    # "vibrator":Lcom/android/server/VibratorService;
    :catch_46
    move-exception v56

    move-object/from16 v84, v85

    .end local v85    # "powerguru":Lcom/android/server/PowerGuruService;
    .restart local v84    # "powerguru":Lcom/android/server/PowerGuruService;
    move-object/from16 v57, v58

    .end local v58    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v57    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v43, v44

    .end local v44    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v43    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v92, v93

    .end local v93    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v97, v98

    .end local v98    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v97    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_35

    .line 556
    .end local v57    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v70    # "mCmIpTableService":Lcom/android/server/phonekeeper/CmIpTableService;
    .end local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v58    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v71    # "mCmIpTableService":Lcom/android/server/phonekeeper/CmIpTableService;
    .restart local v93    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_47
    move-exception v56

    move-object/from16 v70, v71

    .end local v71    # "mCmIpTableService":Lcom/android/server/phonekeeper/CmIpTableService;
    .restart local v70    # "mCmIpTableService":Lcom/android/server/phonekeeper/CmIpTableService;
    goto/16 :goto_37

    .line 549
    .end local v68    # "mCmAutoStartService":Lcom/android/server/phonekeeper/CmAutoStartService;
    .restart local v69    # "mCmAutoStartService":Lcom/android/server/phonekeeper/CmAutoStartService;
    :catch_48
    move-exception v56

    move-object/from16 v68, v69

    .end local v69    # "mCmAutoStartService":Lcom/android/server/phonekeeper/CmAutoStartService;
    .restart local v68    # "mCmAutoStartService":Lcom/android/server/phonekeeper/CmAutoStartService;
    goto/16 :goto_36

    .line 541
    .end local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :catch_49
    move-exception v56

    move-object/from16 v30, v31

    .end local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_34

    .end local v58    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v93    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v33    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v46    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v57    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v59    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v64    # "location":Lcom/android/server/LocationManagerService;
    .restart local v66    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v72    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v83    # "notification":Landroid/app/INotificationManager;
    .restart local v90    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v94    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v100    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_2e
    move-object/from16 v2, v77

    .end local v77    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_17

    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v77    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_2f
    move-object/from16 v2, v77

    .end local v77    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_2c
.end method

.method private static native startSensorService()V
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1318
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1319
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1322
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1323
    return-void
.end method
