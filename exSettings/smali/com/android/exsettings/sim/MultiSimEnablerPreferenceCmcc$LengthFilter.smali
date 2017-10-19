.class Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$LengthFilter;
.super Ljava/lang/Object;
.source "MultiSimEnablerPreferenceCmcc.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LengthFilter"
.end annotation


# instance fields
.field private mMax:I

.field final synthetic this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;


# direct methods
.method public constructor <init>(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;I)V
    .locals 0
    .param p2, "max"    # I

    .prologue
    .line 934
    iput-object p1, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$LengthFilter;->this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 935
    iput p2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$LengthFilter;->mMax:I

    .line 936
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    const v5, 0x7f0c0da1

    const/4 v4, 0x0

    .line 941
    iget v1, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$LengthFilter;->mMax:I

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    sub-int v3, p6, p5

    sub-int/2addr v2, v3

    sub-int v0, v1, v2

    .line 943
    .local v0, "keep":I
    if-gtz v0, :cond_1

    .line 944
    iget-object v1, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$LengthFilter;->this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    # getter for: Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mErrorToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->access$1700(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;)Landroid/widget/Toast;

    move-result-object v1

    if-nez v1, :cond_0

    .line 945
    iget-object v1, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$LengthFilter;->this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    iget-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$LengthFilter;->this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    # getter for: Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->access$1200(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    # setter for: Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mErrorToast:Landroid/widget/Toast;
    invoke-static {v1, v2}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->access$1702(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 948
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$LengthFilter;->this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    # getter for: Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mErrorToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->access$1700(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 949
    const-string v1, ""

    .line 965
    :goto_0
    return-object v1

    .line 950
    :cond_1
    sub-int v1, p3, p2

    if-lt v0, v1, :cond_2

    .line 951
    const/4 v1, 0x0

    goto :goto_0

    .line 953
    :cond_2
    add-int/2addr v0, p2

    .line 954
    iget-object v1, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$LengthFilter;->this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    # getter for: Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mErrorToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->access$1700(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;)Landroid/widget/Toast;

    move-result-object v1

    if-nez v1, :cond_3

    .line 955
    iget-object v1, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$LengthFilter;->this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    iget-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$LengthFilter;->this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    # getter for: Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->access$1200(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    # setter for: Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mErrorToast:Landroid/widget/Toast;
    invoke-static {v1, v2}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->access$1702(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 958
    :cond_3
    iget-object v1, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$LengthFilter;->this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    # getter for: Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mErrorToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->access$1700(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 959
    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 960
    add-int/lit8 v0, v0, -0x1

    .line 961
    if-ne v0, p2, :cond_4

    .line 962
    const-string v1, ""

    goto :goto_0

    .line 965
    :cond_4
    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method
