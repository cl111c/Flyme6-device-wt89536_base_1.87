.class Lcom/android/exsettings/wifi/CmccDisconnectReceiver$1;
.super Ljava/lang/Object;
.source "CmccDisconnectReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->checkCaptivePortThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wifi/CmccDisconnectReceiver;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wifi/CmccDisconnectReceiver;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/exsettings/wifi/CmccDisconnectReceiver$1;->this$0:Lcom/android/exsettings/wifi/CmccDisconnectReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 188
    const-string v0, "CmccDisconnectReceiver"

    const-string v1, "This is a Captive Portal"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/android/exsettings/wifi/CmccDisconnectReceiver$1;->this$0:Lcom/android/exsettings/wifi/CmccDisconnectReceiver;

    const/4 v1, 0x1

    # invokes: Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->recordCMCCLoginStatus(I)V
    invoke-static {v0, v1}, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->access$000(Lcom/android/exsettings/wifi/CmccDisconnectReceiver;I)V

    .line 197
    return-void
.end method
