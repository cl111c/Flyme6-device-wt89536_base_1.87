.class Lcom/android/exsettings/ColorAdjustSettings$GammaModeAdaper$1;
.super Ljava/lang/Object;
.source "ColorAdjustSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/ColorAdjustSettings$GammaModeAdaper;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/ColorAdjustSettings$GammaModeAdaper;


# direct methods
.method constructor <init>(Lcom/android/exsettings/ColorAdjustSettings$GammaModeAdaper;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/exsettings/ColorAdjustSettings$GammaModeAdaper$1;->this$1:Lcom/android/exsettings/ColorAdjustSettings$GammaModeAdaper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 109
    .local v0, "mode":I
    iget-object v1, p0, Lcom/android/exsettings/ColorAdjustSettings$GammaModeAdaper$1;->this$1:Lcom/android/exsettings/ColorAdjustSettings$GammaModeAdaper;

    iget-object v1, v1, Lcom/android/exsettings/ColorAdjustSettings$GammaModeAdaper;->this$0:Lcom/android/exsettings/ColorAdjustSettings;

    # invokes: Lcom/android/exsettings/ColorAdjustSettings;->setGammaMode(I)V
    invoke-static {v1, v0}, Lcom/android/exsettings/ColorAdjustSettings;->access$100(Lcom/android/exsettings/ColorAdjustSettings;I)V

    .line 110
    iget-object v1, p0, Lcom/android/exsettings/ColorAdjustSettings$GammaModeAdaper$1;->this$1:Lcom/android/exsettings/ColorAdjustSettings$GammaModeAdaper;

    invoke-virtual {v1}, Lcom/android/exsettings/ColorAdjustSettings$GammaModeAdaper;->notifyDataSetChanged()V

    .line 111
    return-void
.end method
