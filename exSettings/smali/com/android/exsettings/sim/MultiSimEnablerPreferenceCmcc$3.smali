.class Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$3;
.super Ljava/lang/Object;
.source "MultiSimEnablerPreferenceCmcc.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;


# direct methods
.method constructor <init>(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$3;->this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v1, 0x1

    .line 245
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$3;->this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    # getter for: Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimNameDivider:[Landroid/view/View;
    invoke-static {v0}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->access$900(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;)[Landroid/view/View;

    move-result-object v0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 250
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$3;->this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    # getter for: Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimNameDivider:[Landroid/view/View;
    invoke-static {v0}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->access$900(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;)[Landroid/view/View;

    move-result-object v0

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 237
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 241
    return-void
.end method
