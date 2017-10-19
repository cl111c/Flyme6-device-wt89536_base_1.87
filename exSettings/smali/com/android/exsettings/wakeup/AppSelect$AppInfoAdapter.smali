.class Lcom/android/exsettings/wakeup/AppSelect$AppInfoAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppSelect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/wakeup/AppSelect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppInfoAdapter"
.end annotation


# instance fields
.field final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/exsettings/wakeup/AppSelect;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wakeup/AppSelect;)V
    .locals 2

    .prologue
    .line 787
    iput-object p1, p0, Lcom/android/exsettings/wakeup/AppSelect$AppInfoAdapter;->this$0:Lcom/android/exsettings/wakeup/AppSelect;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 788
    # getter for: Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/exsettings/wakeup/AppSelect;->access$000(Lcom/android/exsettings/wakeup/AppSelect;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect$AppInfoAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 789
    return-void
.end method

.method private bindView(Landroid/view/View;I)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 819
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/wakeup/AppSelect$ViewHolder;

    .line 820
    .local v1, "vh":Lcom/android/exsettings/wakeup/AppSelect$ViewHolder;
    iget-object v2, p0, Lcom/android/exsettings/wakeup/AppSelect$AppInfoAdapter;->this$0:Lcom/android/exsettings/wakeup/AppSelect;

    # getter for: Lcom/android/exsettings/wakeup/AppSelect;->mApp:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/exsettings/wakeup/AppSelect;->access$600(Lcom/android/exsettings/wakeup/AppSelect;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;

    .line 821
    .local v0, "item":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    iget-object v2, v1, Lcom/android/exsettings/wakeup/AppSelect$ViewHolder;->appTitle:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;->appName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 822
    iget-object v2, v0, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;->appSummary:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 823
    iget-object v2, v1, Lcom/android/exsettings/wakeup/AppSelect$ViewHolder;->appSummary:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 824
    iget-object v2, v1, Lcom/android/exsettings/wakeup/AppSelect$ViewHolder;->appSummary:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;->appSummary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 828
    :goto_0
    iget-object v2, v1, Lcom/android/exsettings/wakeup/AppSelect$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    iget-boolean v3, v0, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;->enable:Z

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 829
    return-void

    .line 826
    :cond_0
    iget-object v2, v1, Lcom/android/exsettings/wakeup/AppSelect$ViewHolder;->appSummary:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 832
    iget-object v2, p0, Lcom/android/exsettings/wakeup/AppSelect$AppInfoAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040134

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 833
    .local v1, "v":Landroid/view/View;
    new-instance v0, Lcom/android/exsettings/wakeup/AppSelect$ViewHolder;

    invoke-direct {v0}, Lcom/android/exsettings/wakeup/AppSelect$ViewHolder;-><init>()V

    .line 834
    .local v0, "h":Lcom/android/exsettings/wakeup/AppSelect$ViewHolder;
    const v2, 0x7f120081

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/exsettings/wakeup/AppSelect$ViewHolder;->appTitle:Landroid/widget/TextView;

    .line 835
    const v2, 0x7f120082

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/exsettings/wakeup/AppSelect$ViewHolder;->appSummary:Landroid/widget/TextView;

    .line 836
    const v2, 0x7f12025e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, v0, Lcom/android/exsettings/wakeup/AppSelect$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    .line 837
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 838
    return-object v1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect$AppInfoAdapter;->this$0:Lcom/android/exsettings/wakeup/AppSelect;

    # getter for: Lcom/android/exsettings/wakeup/AppSelect;->mApp:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/exsettings/wakeup/AppSelect;->access$600(Lcom/android/exsettings/wakeup/AppSelect;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect$AppInfoAdapter;->this$0:Lcom/android/exsettings/wakeup/AppSelect;

    # getter for: Lcom/android/exsettings/wakeup/AppSelect;->mApp:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/exsettings/wakeup/AppSelect;->access$600(Lcom/android/exsettings/wakeup/AppSelect;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 803
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 809
    if-nez p2, :cond_0

    .line 810
    invoke-direct {p0, p3}, Lcom/android/exsettings/wakeup/AppSelect$AppInfoAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 814
    .local v0, "v":Landroid/view/View;
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/android/exsettings/wakeup/AppSelect$AppInfoAdapter;->bindView(Landroid/view/View;I)V

    .line 815
    return-object v0

    .line 812
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0    # "v":Landroid/view/View;
    goto :goto_0
.end method
