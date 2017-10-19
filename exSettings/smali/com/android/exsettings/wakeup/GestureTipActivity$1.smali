.class Lcom/android/exsettings/wakeup/GestureTipActivity$1;
.super Ljava/lang/Object;
.source "GestureTipActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/wakeup/GestureTipActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wakeup/GestureTipActivity;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wakeup/GestureTipActivity;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/exsettings/wakeup/GestureTipActivity$1;->this$0:Lcom/android/exsettings/wakeup/GestureTipActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 314
    iget-object v2, p0, Lcom/android/exsettings/wakeup/GestureTipActivity$1;->this$0:Lcom/android/exsettings/wakeup/GestureTipActivity;

    # getter for: Lcom/android/exsettings/wakeup/GestureTipActivity;->mCheckbox:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/exsettings/wakeup/GestureTipActivity;->access$000(Lcom/android/exsettings/wakeup/GestureTipActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    iget-object v2, p0, Lcom/android/exsettings/wakeup/GestureTipActivity$1;->this$0:Lcom/android/exsettings/wakeup/GestureTipActivity;

    # getter for: Lcom/android/exsettings/wakeup/GestureTipActivity;->settings:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/android/exsettings/wakeup/GestureTipActivity;->access$100(Lcom/android/exsettings/wakeup/GestureTipActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 316
    .local v0, "mEditor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/android/exsettings/wakeup/GestureTipActivity$1;->this$0:Lcom/android/exsettings/wakeup/GestureTipActivity;

    # getter for: Lcom/android/exsettings/wakeup/GestureTipActivity;->spKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/exsettings/wakeup/GestureTipActivity;->access$200(Lcom/android/exsettings/wakeup/GestureTipActivity;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 317
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 320
    .end local v0    # "mEditor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/wakeup/GestureTipActivity$1;->this$0:Lcom/android/exsettings/wakeup/GestureTipActivity;

    # getter for: Lcom/android/exsettings/wakeup/GestureTipActivity;->isGesture:Z
    invoke-static {v2}, Lcom/android/exsettings/wakeup/GestureTipActivity;->access$300(Lcom/android/exsettings/wakeup/GestureTipActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 321
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 322
    .local v1, "mIntent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$AppSelectActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    iget-object v2, p0, Lcom/android/exsettings/wakeup/GestureTipActivity$1;->this$0:Lcom/android/exsettings/wakeup/GestureTipActivity;

    invoke-virtual {v2, v1}, Lcom/android/exsettings/wakeup/GestureTipActivity;->startActivity(Landroid/content/Intent;)V

    .line 326
    .end local v1    # "mIntent":Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/wakeup/GestureTipActivity$1;->this$0:Lcom/android/exsettings/wakeup/GestureTipActivity;

    invoke-virtual {v2}, Lcom/android/exsettings/wakeup/GestureTipActivity;->finish()V

    .line 327
    return-void
.end method
