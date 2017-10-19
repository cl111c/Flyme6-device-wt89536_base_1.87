.class Lcom/android/exsettings/SwitchPreferenceOnly$1;
.super Ljava/lang/Object;
.source "SwitchPreferenceOnly.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/SwitchPreferenceOnly;->clearListenerInViewGroup(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/SwitchPreferenceOnly;

.field final synthetic val$switchView:Landroid/widget/Switch;


# direct methods
.method constructor <init>(Lcom/android/exsettings/SwitchPreferenceOnly;Landroid/widget/Switch;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/exsettings/SwitchPreferenceOnly$1;->this$0:Lcom/android/exsettings/SwitchPreferenceOnly;

    iput-object p2, p0, Lcom/android/exsettings/SwitchPreferenceOnly$1;->val$switchView:Landroid/widget/Switch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/exsettings/SwitchPreferenceOnly$1;->val$switchView:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/exsettings/SwitchPreferenceOnly$1;->val$switchView:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 48
    return-void
.end method
