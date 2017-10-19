.class public Lcom/android/exsettings/wakeup/GestureBootResetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GestureBootResetReceiver.java"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 34
    const-string v0, "GestureBootResetReceiver"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureBootResetReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method private resetGestureTempValue(C)V
    .locals 7
    .param p1, "temp"    # C

    .prologue
    .line 58
    const/4 v2, 0x0

    .line 60
    .local v2, "fileOutStream":Ljava/io/FileWriter;
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v4, "/sys/class/tp_gesture/tp_device/tp_gesture_id"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .local v1, "file":Ljava/io/File;
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 62
    .local v3, "writer":Ljava/io/BufferedWriter;
    invoke-virtual {v3, p1}, Ljava/io/BufferedWriter;->write(I)V

    .line 63
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 64
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 65
    const-string v4, "GestureBootResetReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resetGestureTempValue() temp=:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    if-eqz v2, :cond_0

    .line 75
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    :cond_0
    :goto_0
    return-void

    .line 76
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v0

    .line 77
    .local v0, "ex":Ljava/io/IOException;
    const-string v4, "GestureBootResetReceiver"

    const-string v5, "IOException while closing synced file: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 78
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 79
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v4, "GestureBootResetReceiver"

    const-string v5, "exception while closing file: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 66
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    :catch_2
    move-exception v0

    .line 67
    .local v0, "ex":Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v4, "GestureBootResetReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file  not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    if-eqz v2, :cond_0

    .line 75
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_0

    .line 76
    :catch_3
    move-exception v0

    .line 77
    .local v0, "ex":Ljava/io/IOException;
    const-string v4, "GestureBootResetReceiver"

    const-string v5, "IOException while closing synced file: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 78
    .local v0, "ex":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v0

    .line 79
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v4, "GestureBootResetReceiver"

    const-string v5, "exception while closing file: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 68
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_5
    move-exception v0

    .line 69
    .local v0, "ex":Ljava/io/IOException;
    :try_start_4
    const-string v4, "GestureBootResetReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException trying to  : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 73
    if-eqz v2, :cond_0

    .line 75
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_7

    goto :goto_0

    .line 76
    :catch_6
    move-exception v0

    .line 77
    const-string v4, "GestureBootResetReceiver"

    const-string v5, "IOException while closing synced file: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 78
    :catch_7
    move-exception v0

    .line 79
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v4, "GestureBootResetReceiver"

    const-string v5, "exception while closing file: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 70
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_8
    move-exception v0

    .line 71
    .restart local v0    # "ex":Ljava/lang/RuntimeException;
    :try_start_6
    const-string v4, "GestureBootResetReceiver"

    const-string v5, "exception while syncing file: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 73
    if-eqz v2, :cond_0

    .line 75
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_a

    goto/16 :goto_0

    .line 76
    :catch_9
    move-exception v0

    .line 77
    .local v0, "ex":Ljava/io/IOException;
    const-string v4, "GestureBootResetReceiver"

    const-string v5, "IOException while closing synced file: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 78
    .local v0, "ex":Ljava/lang/RuntimeException;
    :catch_a
    move-exception v0

    .line 79
    const-string v4, "GestureBootResetReceiver"

    const-string v5, "exception while closing file: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 73
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_1

    .line 75
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_c

    .line 80
    :cond_1
    :goto_1
    throw v4

    .line 76
    :catch_b
    move-exception v0

    .line 77
    .local v0, "ex":Ljava/io/IOException;
    const-string v5, "GestureBootResetReceiver"

    const-string v6, "IOException while closing synced file: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 78
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_c
    move-exception v0

    .line 79
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v5, "GestureBootResetReceiver"

    const-string v6, "exception while closing file: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "black_gesture_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 40
    const/16 v0, 0x30

    invoke-direct {p0, v0}, Lcom/android/exsettings/wakeup/GestureBootResetReceiver;->resetGestureTempValue(C)V

    .line 55
    :goto_0
    return-void

    .line 42
    :cond_0
    const/16 v0, 0x31

    invoke-direct {p0, v0}, Lcom/android/exsettings/wakeup/GestureBootResetReceiver;->resetGestureTempValue(C)V

    goto :goto_0
.end method
