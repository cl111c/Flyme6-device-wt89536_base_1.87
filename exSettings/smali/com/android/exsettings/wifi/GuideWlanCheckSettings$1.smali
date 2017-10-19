.class Lcom/android/exsettings/wifi/GuideWlanCheckSettings$1;
.super Landroid/os/Handler;
.source "GuideWlanCheckSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wifi/GuideWlanCheckSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wifi/GuideWlanCheckSettings;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$1;->this$0:Lcom/android/exsettings/wifi/GuideWlanCheckSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 140
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 152
    :goto_0
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$1;->this$0:Lcom/android/exsettings/wifi/GuideWlanCheckSettings;

    # invokes: Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->changeLayoutStatus()V
    invoke-static {v0}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->access$400(Lcom/android/exsettings/wifi/GuideWlanCheckSettings;)V

    .line 153
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$1;->this$0:Lcom/android/exsettings/wifi/GuideWlanCheckSettings;

    # invokes: Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->checkInput()V
    invoke-static {v0}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->access$500(Lcom/android/exsettings/wifi/GuideWlanCheckSettings;)V

    .line 154
    return-void

    .line 142
    :pswitch_0
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$1;->this$0:Lcom/android/exsettings/wifi/GuideWlanCheckSettings;

    # setter for: Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->accountCheckState:I
    invoke-static {v0, v2}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->access$002(Lcom/android/exsettings/wifi/GuideWlanCheckSettings;I)I

    .line 143
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$1;->this$0:Lcom/android/exsettings/wifi/GuideWlanCheckSettings;

    iget-object v1, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$1;->this$0:Lcom/android/exsettings/wifi/GuideWlanCheckSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->inputNumberStr:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->access$100(Lcom/android/exsettings/wifi/GuideWlanCheckSettings;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->recordCMCCLoginInfo(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->access$200(Lcom/android/exsettings/wifi/GuideWlanCheckSettings;Ljava/lang/String;Z)V

    .line 144
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$1;->this$0:Lcom/android/exsettings/wifi/GuideWlanCheckSettings;

    # invokes: Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->jumpToInternetCostSettings()V
    invoke-static {v0}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->access$300(Lcom/android/exsettings/wifi/GuideWlanCheckSettings;)V

    goto :goto_0

    .line 147
    :pswitch_1
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$1;->this$0:Lcom/android/exsettings/wifi/GuideWlanCheckSettings;

    const/4 v1, 0x2

    # setter for: Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->accountCheckState:I
    invoke-static {v0, v1}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->access$002(Lcom/android/exsettings/wifi/GuideWlanCheckSettings;I)I

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
