.class Lcom/android/exsettings/DreamSettings$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DreamSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/DreamSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/DreamSettings;


# direct methods
.method private constructor <init>(Lcom/android/exsettings/DreamSettings;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/exsettings/DreamSettings$PackageReceiver;->this$0:Lcom/android/exsettings/DreamSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/DreamSettings;Lcom/android/exsettings/DreamSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/exsettings/DreamSettings;
    .param p2, "x1"    # Lcom/android/exsettings/DreamSettings$1;

    .prologue
    .line 370
    invoke-direct {p0, p1}, Lcom/android/exsettings/DreamSettings$PackageReceiver;-><init>(Lcom/android/exsettings/DreamSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 373
    const-string v0, "PackageReceiver.onReceive"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    # invokes: Lcom/android/exsettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/exsettings/DreamSettings;->access$200(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 374
    iget-object v0, p0, Lcom/android/exsettings/DreamSettings$PackageReceiver;->this$0:Lcom/android/exsettings/DreamSettings;

    # invokes: Lcom/android/exsettings/DreamSettings;->refreshFromBackend()V
    invoke-static {v0}, Lcom/android/exsettings/DreamSettings;->access$400(Lcom/android/exsettings/DreamSettings;)V

    .line 375
    return-void
.end method
