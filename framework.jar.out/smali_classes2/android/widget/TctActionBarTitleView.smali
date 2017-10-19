.class public Landroid/widget/TctActionBarTitleView;
.super Landroid/widget/RelativeLayout;
.source "TctActionBarTitleView.java"


# instance fields
.field private mFakeBtn:Landroid/widget/Button;

.field private mHandleBtn:Landroid/widget/Button;

.field private mTctTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-direct {p0, p1}, Landroid/widget/TctActionBarTitleView;->initView(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramAttributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/TctActionBarTitleView;->initView(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramAttributeSet"    # Landroid/util/AttributeSet;
    .param p3, "paramInt"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/TctActionBarTitleView;->initView(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 2
    .param p1, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x10900ed

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 31
    const v0, 0x1020056

    invoke-virtual {p0, v0}, Landroid/widget/TctActionBarTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/TctActionBarTitleView;->mTctTitle:Landroid/widget/TextView;

    .line 32
    const v0, 0x1020057

    invoke-virtual {p0, v0}, Landroid/widget/TctActionBarTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/widget/TctActionBarTitleView;->mHandleBtn:Landroid/widget/Button;

    .line 33
    const v0, 0x1020055

    invoke-virtual {p0, v0}, Landroid/widget/TctActionBarTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/widget/TctActionBarTitleView;->mFakeBtn:Landroid/widget/Button;

    .line 34
    return-void
.end method


# virtual methods
.method public getFakeBtn()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Landroid/widget/TctActionBarTitleView;->mFakeBtn:Landroid/widget/Button;

    return-object v0
.end method

.method public getHandleBtn()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Landroid/widget/TctActionBarTitleView;->mHandleBtn:Landroid/widget/Button;

    return-object v0
.end method

.method public getTctTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Landroid/widget/TctActionBarTitleView;->mTctTitle:Landroid/widget/TextView;

    return-object v0
.end method
