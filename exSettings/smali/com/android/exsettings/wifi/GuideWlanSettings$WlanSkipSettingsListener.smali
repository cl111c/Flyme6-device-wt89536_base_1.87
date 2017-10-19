.class Lcom/android/exsettings/wifi/GuideWlanSettings$WlanSkipSettingsListener;
.super Ljava/lang/Object;
.source "GuideWlanSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/wifi/GuideWlanSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WlanSkipSettingsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wifi/GuideWlanSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wifi/GuideWlanSettings;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/exsettings/wifi/GuideWlanSettings$WlanSkipSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 188
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.setting.GUIDE_WIFI"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    .local v1, "wifiDlgIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/exsettings/wifi/GuideWlanSettings$WlanSkipSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanSettings;

    invoke-virtual {v2, v1}, Lcom/android/exsettings/wifi/GuideWlanSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 191
    iget-object v2, p0, Lcom/android/exsettings/wifi/GuideWlanSettings$WlanSkipSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanSettings;->wlanSkip:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/exsettings/wifi/GuideWlanSettings;->access$000(Lcom/android/exsettings/wifi/GuideWlanSettings;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 192
    iget-object v2, p0, Lcom/android/exsettings/wifi/GuideWlanSettings$WlanSkipSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanSettings;->wlanBack:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/exsettings/wifi/GuideWlanSettings;->access$100(Lcom/android/exsettings/wifi/GuideWlanSettings;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 193
    iget-object v2, p0, Lcom/android/exsettings/wifi/GuideWlanSettings$WlanSkipSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/exsettings/wifi/GuideWlanSettings;->access$400(Lcom/android/exsettings/wifi/GuideWlanSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 194
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 195
    .local v0, "localIntent":Landroid/content/Intent;
    const-string v2, "com.android.guide"

    const-string v3, "com.android.guide.GuideDateTimeSettings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    iget-object v2, p0, Lcom/android/exsettings/wifi/GuideWlanSettings$WlanSkipSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanSettings;

    invoke-virtual {v2, v0}, Lcom/android/exsettings/wifi/GuideWlanSettings;->startActivity(Landroid/content/Intent;)V

    .line 197
    iget-object v2, p0, Lcom/android/exsettings/wifi/GuideWlanSettings$WlanSkipSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanSettings;

    invoke-virtual {v2}, Lcom/android/exsettings/wifi/GuideWlanSettings;->finish()V

    .line 198
    return-void
.end method
