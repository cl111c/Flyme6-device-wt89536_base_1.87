.class Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountNextSettingsListener;
.super Ljava/lang/Object;
.source "GuideWlanAccountSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/wifi/GuideWlanAccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WlanAccountNextSettingsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wifi/GuideWlanAccountSettings;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountNextSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "paramView"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 276
    iget-object v3, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountNextSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->wlanAccountNext:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->access$000(Lcom/android/exsettings/wifi/GuideWlanAccountSettings;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setClickable(Z)V

    .line 277
    iget-object v3, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountNextSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->wlanAccountBack:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->access$100(Lcom/android/exsettings/wifi/GuideWlanAccountSettings;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setClickable(Z)V

    .line 278
    iget-object v3, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountNextSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->putNumEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->access$400(Lcom/android/exsettings/wifi/GuideWlanAccountSettings;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, "str1":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountNextSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->putCodeEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->access$500(Lcom/android/exsettings/wifi/GuideWlanAccountSettings;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, "str2":Ljava/lang/String;
    const-string v3, "guide"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GuideWlanAccountSettings: inputNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string v3, "guide"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GuideWlanAccountSettings: inputCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 284
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountNextSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    const v4, 0x7f0c0c67

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 285
    const-string v3, "guide"

    const-string v4, "GuideWlanAccountSettings: Invalid username or password."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v3, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountNextSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->wlanAccountNext:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->access$000(Lcom/android/exsettings/wifi/GuideWlanAccountSettings;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setClickable(Z)V

    .line 287
    iget-object v3, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountNextSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->wlanAccountBack:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->access$100(Lcom/android/exsettings/wifi/GuideWlanAccountSettings;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setClickable(Z)V

    .line 307
    :goto_0
    return-void

    .line 290
    :cond_1
    const-string v3, "guide"

    const-string v4, "GuideWlanAccountSettings: username and password may be correct."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 294
    .local v0, "localIntent1":Landroid/content/Intent;
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.wifi.GuideWlanCheckSettings"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    const-string v3, "number"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    const-string v3, "code"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    const-string v3, "state"

    const-string v4, "0"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    iget-object v3, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountNextSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    invoke-virtual {v3, v0}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->startActivity(Landroid/content/Intent;)V

    .line 305
    iget-object v3, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountNextSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    iget-object v3, v3, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v3, v6}, Landroid/app/StatusBarManager;->disable(I)V

    .line 306
    iget-object v3, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountNextSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    invoke-virtual {v3}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->finish()V

    goto :goto_0
.end method
