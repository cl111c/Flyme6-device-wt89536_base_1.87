.class Lcom/android/exsettings/wifi/GuideWlanCheckSettings$WlanCheckSuccessListener;
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
    name = "WlanCheckSuccessListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wifi/GuideWlanCheckSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wifi/GuideWlanCheckSettings;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$WlanCheckSuccessListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanCheckSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "paramView"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 310
    iget-object v1, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$WlanCheckSuccessListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanCheckSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->wlanCheckNext:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->access$600(Lcom/android/exsettings/wifi/GuideWlanCheckSettings;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 311
    iget-object v1, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$WlanCheckSuccessListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanCheckSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->wlanCheckBack:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->access$700(Lcom/android/exsettings/wifi/GuideWlanCheckSettings;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 312
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 313
    .local v0, "localIntent":Landroid/content/Intent;
    const-string v1, "com.android.guide"

    const-string v2, "com.android.guide.GuideDateTimeSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    iget-object v1, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$WlanCheckSuccessListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanCheckSettings;

    invoke-virtual {v1, v0}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->startActivity(Landroid/content/Intent;)V

    .line 315
    iget-object v1, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$WlanCheckSuccessListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanCheckSettings;

    iget-object v1, v1, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v1, v3}, Landroid/app/StatusBarManager;->disable(I)V

    .line 316
    iget-object v1, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$WlanCheckSuccessListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanCheckSettings;

    invoke-virtual {v1}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->finish()V

    .line 317
    return-void
.end method