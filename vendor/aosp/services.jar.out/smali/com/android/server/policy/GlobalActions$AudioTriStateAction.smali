.class abstract Lcom/android/server/policy/GlobalActions$AudioTriStateAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/GlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AudioTriStateAction"
.end annotation


# instance fields
.field protected mMessageResId:I

.field protected mNormalIconResId:I

.field protected mNormalStatusMessageResId:I

.field protected mSlientIconResid:I

.field protected mSlientStatusMessageResId:I

.field protected mState:I

.field protected mVibrateIconResid:I

.field protected mVibrateStatusMessageResId:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 1
    .param p1, "normalIconResId"    # I
    .param p2, "vibrateIconResid"    # I
    .param p3, "slientIconResid"    # I
    .param p4, "normalStatusMessageResId"    # I
    .param p5, "vibrateStatusMessageResId"    # I
    .param p6, "slientStatusMessageResId"    # I

    .prologue
    .line 1094
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1078
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/policy/GlobalActions$AudioTriStateAction;->mState:I

    .line 1095
    iput p1, p0, Lcom/android/server/policy/GlobalActions$AudioTriStateAction;->mNormalIconResId:I

    .line 1096
    iput p2, p0, Lcom/android/server/policy/GlobalActions$AudioTriStateAction;->mVibrateIconResid:I

    .line 1097
    iput p3, p0, Lcom/android/server/policy/GlobalActions$AudioTriStateAction;->mSlientIconResid:I

    .line 1098
    iput p4, p0, Lcom/android/server/policy/GlobalActions$AudioTriStateAction;->mNormalStatusMessageResId:I

    .line 1099
    iput p5, p0, Lcom/android/server/policy/GlobalActions$AudioTriStateAction;->mVibrateStatusMessageResId:I

    .line 1100
    iput p6, p0, Lcom/android/server/policy/GlobalActions$AudioTriStateAction;->mSlientStatusMessageResId:I

    .line 1101
    return-void
.end method


# virtual methods
.method protected changeStateFromPress(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 1165
    iput p1, p0, Lcom/android/server/policy/GlobalActions$AudioTriStateAction;->mState:I

    .line 1166
    return-void
.end method

.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1118
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions$AudioTriStateAction;->willCreate()V

    .line 1119
    const v6, 0x1090063

    invoke-virtual {p4, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 1121
    .local v5, "v":Landroid/view/View;
    const v6, 0x1020006

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1122
    .local v2, "icon":Landroid/widget/ImageView;
    const v6, 0x102000b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1123
    .local v3, "messageView":Landroid/widget/TextView;
    const v6, 0x102033c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1124
    .local v4, "statusView":Landroid/widget/TextView;
    const v6, 0x102005c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1125
    .local v0, "divider":Landroid/view/View;
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1126
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions$AudioTriStateAction;->isEnabled()Z

    move-result v1

    .line 1128
    .local v1, "enabled":Z
    if-eqz v3, :cond_0

    .line 1129
    iget v6, p0, Lcom/android/server/policy/GlobalActions$AudioTriStateAction;->mState:I

    if-ne v6, v9, :cond_3

    iget v6, p0, Lcom/android/server/policy/GlobalActions$AudioTriStateAction;->mNormalStatusMessageResId:I

    :goto_0
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1130
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1131
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1134
    :cond_0
    if-eqz v2, :cond_1

    .line 1135
    iget v6, p0, Lcom/android/server/policy/GlobalActions$AudioTriStateAction;->mState:I

    if-ne v6, v9, :cond_5

    iget v6, p0, Lcom/android/server/policy/GlobalActions$AudioTriStateAction;->mNormalIconResId:I

    :goto_1
    invoke-virtual {p1, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1137
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1140
    :cond_1
    if-eqz v4, :cond_2

    .line 1141
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1143
    :cond_2
    invoke-virtual {v5, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1145
    return-object v5

    .line 1129
    :cond_3
    iget v6, p0, Lcom/android/server/policy/GlobalActions$AudioTriStateAction;->mState:I

    if-ne v6, v8, :cond_4

    iget v6, p0, Lcom/android/server/policy/GlobalActions$AudioTriStateAction;->mVibrateStatusMessageResId:I

    goto :goto_0

    :cond_4
    iget v6, p0, Lcom/android/server/policy/GlobalActions$AudioTriStateAction;->mSlientStatusMessageResId:I

    goto :goto_0

    .line 1135
    :cond_5
    iget v6, p0, Lcom/android/server/policy/GlobalActions$AudioTriStateAction;->mState:I

    if-ne v6, v8, :cond_6

    iget v6, p0, Lcom/android/server/policy/GlobalActions$AudioTriStateAction;->mVibrateIconResid:I

    goto :goto_1

    :cond_6
    iget v6, p0, Lcom/android/server/policy/GlobalActions$AudioTriStateAction;->mSlientIconResid:I

    goto :goto_1
.end method

.method public getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1113
    iget v0, p0, Lcom/android/server/policy/GlobalActions$AudioTriStateAction;->mMessageResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1155
    const/4 v0, 0x1

    return v0
.end method

.method public final onPress()V
    .locals 2

    .prologue
    .line 1149
    iget v1, p0, Lcom/android/server/policy/GlobalActions$AudioTriStateAction;->mState:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/server/policy/GlobalActions$AudioTriStateAction;->mState:I

    add-int/lit8 v0, v1, -0x1

    .line 1150
    .local v0, "state":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/policy/GlobalActions$AudioTriStateAction;->onToggle(I)V

    .line 1151
    invoke-virtual {p0, v0}, Lcom/android/server/policy/GlobalActions$AudioTriStateAction;->changeStateFromPress(I)V

    .line 1152
    return-void

    .line 1149
    .end local v0    # "state":I
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method abstract onToggle(I)V
.end method

.method public updateState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 1171
    iput p1, p0, Lcom/android/server/policy/GlobalActions$AudioTriStateAction;->mState:I

    .line 1172
    return-void
.end method

.method willCreate()V
    .locals 0

    .prologue
    .line 1109
    return-void
.end method
