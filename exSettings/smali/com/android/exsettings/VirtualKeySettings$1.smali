.class Lcom/android/exsettings/VirtualKeySettings$1;
.super Ljava/lang/Object;
.source "VirtualKeySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/VirtualKeySettings;->loadFromSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/VirtualKeySettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/VirtualKeySettings;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/exsettings/VirtualKeySettings$1;->this$0:Lcom/android/exsettings/VirtualKeySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/exsettings/VirtualKeySettings$1;->this$0:Lcom/android/exsettings/VirtualKeySettings;

    # getter for: Lcom/android/exsettings/VirtualKeySettings;->RightImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/exsettings/VirtualKeySettings;->access$000(Lcom/android/exsettings/VirtualKeySettings;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/VirtualKeySettings$1;->this$0:Lcom/android/exsettings/VirtualKeySettings;

    invoke-virtual {v1}, Lcom/android/exsettings/VirtualKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    iget-object v0, p0, Lcom/android/exsettings/VirtualKeySettings$1;->this$0:Lcom/android/exsettings/VirtualKeySettings;

    # getter for: Lcom/android/exsettings/VirtualKeySettings;->LeftImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/exsettings/VirtualKeySettings;->access$100(Lcom/android/exsettings/VirtualKeySettings;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/VirtualKeySettings$1;->this$0:Lcom/android/exsettings/VirtualKeySettings;

    invoke-virtual {v1}, Lcom/android/exsettings/VirtualKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201ff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    iget-object v0, p0, Lcom/android/exsettings/VirtualKeySettings$1;->this$0:Lcom/android/exsettings/VirtualKeySettings;

    # getter for: Lcom/android/exsettings/VirtualKeySettings;->mLeftchoose:Landroid/widget/RadioGroup;
    invoke-static {v0}, Lcom/android/exsettings/VirtualKeySettings;->access$200(Lcom/android/exsettings/VirtualKeySettings;)Landroid/widget/RadioGroup;

    move-result-object v0

    const v1, 0x7f120242

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 109
    iget-object v0, p0, Lcom/android/exsettings/VirtualKeySettings$1;->this$0:Lcom/android/exsettings/VirtualKeySettings;

    invoke-virtual {v0}, Lcom/android/exsettings/VirtualKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "virtual_key_setting"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 111
    return-void
.end method
