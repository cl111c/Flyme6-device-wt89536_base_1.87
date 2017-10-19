.class Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SimDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/sim/SimDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectAccountListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;
    }
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
.field private final OPACITY:F

.field private mContext:Landroid/content/Context;

.field private mDialogId:I

.field private mResId:I

.field private mSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/exsettings/sim/SimDialogActivity;


# direct methods
.method public constructor <init>(Lcom/android/exsettings/sim/SimDialogActivity;Ljava/util/List;Landroid/content/Context;I[Ljava/lang/String;I)V
    .locals 1
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "resource"    # I
    .param p5, "arr"    # [Ljava/lang/String;
    .param p6, "dialogId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;",
            "Landroid/content/Context;",
            "I[",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 372
    .local p2, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    iput-object p1, p0, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter;->this$0:Lcom/android/exsettings/sim/SimDialogActivity;

    .line 373
    invoke-direct {p0, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 368
    const v0, 0x3f0a3d71    # 0.54f

    iput v0, p0, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter;->OPACITY:F

    .line 374
    iput-object p3, p0, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    .line 375
    iput p4, p0, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter;->mResId:I

    .line 376
    iput p6, p0, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter;->mDialogId:I

    .line 377
    iput-object p2, p0, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter;->mSubInfoList:Ljava/util/List;

    .line 378
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 382
    iget-object v4, p0, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 387
    .local v1, "inflater":Landroid/view/LayoutInflater;
    if-nez p2, :cond_0

    .line 389
    iget v4, p0, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter;->mResId:I

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 390
    .local v2, "rowView":Landroid/view/View;
    new-instance v0, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;

    invoke-direct {v0, p0, v6}, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;-><init>(Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter;Lcom/android/exsettings/sim/SimDialogActivity$1;)V

    .line 391
    .local v0, "holder":Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;
    const v4, 0x7f120033

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 392
    const v4, 0x7f120047

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    .line 393
    const v4, 0x7f120032

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 394
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 400
    :goto_0
    iget-object v4, p0, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter;->mSubInfoList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 401
    .local v3, "sir":Landroid/telephony/SubscriptionInfo;
    if-nez v3, :cond_1

    .line 402
    iget-object v5, v0, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    iget-object v4, v0, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    iget-object v4, v0, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter;->this$0:Lcom/android/exsettings/sim/SimDialogActivity;

    invoke-virtual {v5}, Lcom/android/exsettings/sim/SimDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02010c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 406
    iget-object v4, v0, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v5, 0x3f0a3d71    # 0.54f

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 412
    :goto_1
    return-object v2

    .line 396
    .end local v0    # "holder":Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;
    .end local v2    # "rowView":Landroid/view/View;
    .end local v3    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_0
    move-object v2, p2

    .line 397
    .restart local v2    # "rowView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;
    goto :goto_0

    .line 408
    .restart local v3    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_1
    iget-object v4, v0, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v4, v0, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    iget-object v4, v0, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/telephony/SubscriptionInfo;->createIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method
