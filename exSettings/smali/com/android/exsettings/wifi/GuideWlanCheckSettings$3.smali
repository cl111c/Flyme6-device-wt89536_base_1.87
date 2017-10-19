.class Lcom/android/exsettings/wifi/GuideWlanCheckSettings$3;
.super Ljava/lang/Object;
.source "GuideWlanCheckSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->jumpToInternetCostSettings()V
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
    .line 368
    iput-object p1, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$3;->this$0:Lcom/android/exsettings/wifi/GuideWlanCheckSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 372
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 373
    .local v0, "localIntent":Landroid/content/Intent;
    const-string v1, "com.android.guide"

    const-string v2, "com.android.guide.GuideDateTimeSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    iget-object v1, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$3;->this$0:Lcom/android/exsettings/wifi/GuideWlanCheckSettings;

    invoke-virtual {v1, v0}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->startActivity(Landroid/content/Intent;)V

    .line 375
    iget-object v1, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$3;->this$0:Lcom/android/exsettings/wifi/GuideWlanCheckSettings;

    iget-object v1, v1, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 376
    iget-object v1, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$3;->this$0:Lcom/android/exsettings/wifi/GuideWlanCheckSettings;

    invoke-virtual {v1}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->finish()V

    .line 377
    return-void
.end method
