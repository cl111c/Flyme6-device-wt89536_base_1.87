.class Lcom/android/exsettings/ColorAdjustSettings$CeModeAdaper$1;
.super Ljava/lang/Object;
.source "ColorAdjustSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/ColorAdjustSettings$CeModeAdaper;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/ColorAdjustSettings$CeModeAdaper;


# direct methods
.method constructor <init>(Lcom/android/exsettings/ColorAdjustSettings$CeModeAdaper;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/exsettings/ColorAdjustSettings$CeModeAdaper$1;->this$1:Lcom/android/exsettings/ColorAdjustSettings$CeModeAdaper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 147
    .local v0, "mode":I
    iget-object v1, p0, Lcom/android/exsettings/ColorAdjustSettings$CeModeAdaper$1;->this$1:Lcom/android/exsettings/ColorAdjustSettings$CeModeAdaper;

    iget-object v1, v1, Lcom/android/exsettings/ColorAdjustSettings$CeModeAdaper;->this$0:Lcom/android/exsettings/ColorAdjustSettings;

    # invokes: Lcom/android/exsettings/ColorAdjustSettings;->setCeMode(I)V
    invoke-static {v1, v0}, Lcom/android/exsettings/ColorAdjustSettings;->access$300(Lcom/android/exsettings/ColorAdjustSettings;I)V

    .line 148
    iget-object v1, p0, Lcom/android/exsettings/ColorAdjustSettings$CeModeAdaper$1;->this$1:Lcom/android/exsettings/ColorAdjustSettings$CeModeAdaper;

    invoke-virtual {v1}, Lcom/android/exsettings/ColorAdjustSettings$CeModeAdaper;->notifyDataSetChanged()V

    .line 149
    return-void
.end method
