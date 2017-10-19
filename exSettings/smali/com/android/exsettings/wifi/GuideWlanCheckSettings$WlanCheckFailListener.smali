.class Lcom/android/exsettings/wifi/GuideWlanCheckSettings$WlanCheckFailListener;
.super Ljava/lang/Object;
.source "GuideWlanCheckSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/wifi/GuideWlanCheckSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WlanCheckFailListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wifi/GuideWlanCheckSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wifi/GuideWlanCheckSettings;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$WlanCheckFailListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanCheckSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "paramView"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x8

    .line 267
    iget-object v2, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$WlanCheckFailListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanCheckSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->mCheckFailTextBg:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->access$800(Lcom/android/exsettings/wifi/GuideWlanCheckSettings;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 268
    iget-object v2, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$WlanCheckFailListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanCheckSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->mCheckFailText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->access$900(Lcom/android/exsettings/wifi/GuideWlanCheckSettings;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    iget-object v2, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$WlanCheckFailListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanCheckSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->mCheckFailButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->access$1000(Lcom/android/exsettings/wifi/GuideWlanCheckSettings;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 271
    iget-object v2, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$WlanCheckFailListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanCheckSettings;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 272
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_0

    .line 273
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 275
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 276
    .local v0, "localIntent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.wifi.GuideWlanSettings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    iget-object v2, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$WlanCheckFailListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanCheckSettings;

    invoke-virtual {v2, v0}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->startActivity(Landroid/content/Intent;)V

    .line 278
    iget-object v2, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$WlanCheckFailListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanCheckSettings;

    invoke-virtual {v2}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->finish()V

    .line 280
    return-void
.end method
