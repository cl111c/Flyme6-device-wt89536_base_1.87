.class Lcom/android/exsettings/ColorAdjustSettings$CeModeAdaper;
.super Landroid/widget/ArrayAdapter;
.source "ColorAdjustSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/ColorAdjustSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CeModeAdaper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mItemView:Landroid/widget/RelativeLayout;

.field private mResource:I

.field final synthetic this$0:Lcom/android/exsettings/ColorAdjustSettings;


# direct methods
.method public constructor <init>(Lcom/android/exsettings/ColorAdjustSettings;Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .param p4, "list"    # [Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/exsettings/ColorAdjustSettings$CeModeAdaper;->this$0:Lcom/android/exsettings/ColorAdjustSettings;

    .line 120
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 121
    iput p3, p0, Lcom/android/exsettings/ColorAdjustSettings$CeModeAdaper;->mResource:I

    .line 122
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x1

    .line 125
    invoke-virtual {p0, p1}, Lcom/android/exsettings/ColorAdjustSettings$CeModeAdaper;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 126
    .local v0, "name":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 127
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/android/exsettings/ColorAdjustSettings$CeModeAdaper;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/exsettings/ColorAdjustSettings$CeModeAdaper;->mItemView:Landroid/widget/RelativeLayout;

    .line 128
    invoke-virtual {p0}, Lcom/android/exsettings/ColorAdjustSettings$CeModeAdaper;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 130
    .local v3, "vi":Landroid/view/LayoutInflater;
    iget v4, p0, Lcom/android/exsettings/ColorAdjustSettings$CeModeAdaper;->mResource:I

    iget-object v5, p0, Lcom/android/exsettings/ColorAdjustSettings$CeModeAdaper;->mItemView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 134
    .end local v3    # "vi":Landroid/view/LayoutInflater;
    .end local p2    # "convertView":Landroid/view/View;
    :goto_0
    iget-object v4, p0, Lcom/android/exsettings/ColorAdjustSettings$CeModeAdaper;->mItemView:Landroid/widget/RelativeLayout;

    const v5, 0x1020016

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v4, p0, Lcom/android/exsettings/ColorAdjustSettings$CeModeAdaper;->mItemView:Landroid/widget/RelativeLayout;

    const v5, 0x1020019

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 136
    .local v1, "radioButton":Landroid/widget/RadioButton;
    iget-object v4, p0, Lcom/android/exsettings/ColorAdjustSettings$CeModeAdaper;->this$0:Lcom/android/exsettings/ColorAdjustSettings;

    # getter for: Lcom/android/exsettings/ColorAdjustSettings;->mCeMode:I
    invoke-static {v4}, Lcom/android/exsettings/ColorAdjustSettings;->access$200(Lcom/android/exsettings/ColorAdjustSettings;)I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 137
    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 141
    :goto_1
    iget-object v4, p0, Lcom/android/exsettings/ColorAdjustSettings$CeModeAdaper;->mItemView:Landroid/widget/RelativeLayout;

    const v5, 0x7f12004b

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 142
    .local v2, "v":Landroid/view/View;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 143
    new-instance v4, Lcom/android/exsettings/ColorAdjustSettings$CeModeAdaper$1;

    invoke-direct {v4, p0}, Lcom/android/exsettings/ColorAdjustSettings$CeModeAdaper$1;-><init>(Lcom/android/exsettings/ColorAdjustSettings$CeModeAdaper;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v4, p0, Lcom/android/exsettings/ColorAdjustSettings$CeModeAdaper;->mItemView:Landroid/widget/RelativeLayout;

    return-object v4

    .line 132
    .end local v1    # "radioButton":Landroid/widget/RadioButton;
    .end local v2    # "v":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    check-cast p2, Landroid/widget/RelativeLayout;

    .end local p2    # "convertView":Landroid/view/View;
    iput-object p2, p0, Lcom/android/exsettings/ColorAdjustSettings$CeModeAdaper;->mItemView:Landroid/widget/RelativeLayout;

    goto :goto_0

    .line 139
    .restart local v1    # "radioButton":Landroid/widget/RadioButton;
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1
.end method
