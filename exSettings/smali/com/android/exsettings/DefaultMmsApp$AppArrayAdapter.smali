.class public Lcom/android/exsettings/DefaultMmsApp$AppArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DefaultMmsApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/DefaultMmsApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/DefaultMmsApp;


# direct methods
.method public constructor <init>(Lcom/android/exsettings/DefaultMmsApp;Landroid/content/Context;I[Ljava/lang/CharSequence;[Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "textViewResourceId"    # I
    .param p4, "objects"    # [Ljava/lang/CharSequence;
    .param p5, "imageDrawables"    # [Landroid/graphics/drawable/Drawable;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/exsettings/DefaultMmsApp$AppArrayAdapter;->this$0:Lcom/android/exsettings/DefaultMmsApp;

    .line 139
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 140
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 144
    invoke-virtual {p0}, Lcom/android/exsettings/DefaultMmsApp$AppArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 147
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040011

    invoke-virtual {v1, v3, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 149
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f12001e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 150
    .local v0, "checkedTextView":Landroid/widget/CheckedTextView;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/DefaultMmsApp$AppArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v3, p0, Lcom/android/exsettings/DefaultMmsApp$AppArrayAdapter;->this$0:Lcom/android/exsettings/DefaultMmsApp;

    # getter for: Lcom/android/exsettings/DefaultMmsApp;->packageNames:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/exsettings/DefaultMmsApp;->access$100(Lcom/android/exsettings/DefaultMmsApp;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p1

    iget-object v4, p0, Lcom/android/exsettings/DefaultMmsApp$AppArrayAdapter;->this$0:Lcom/android/exsettings/DefaultMmsApp;

    # getter for: Lcom/android/exsettings/DefaultMmsApp;->defaultPackageName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/exsettings/DefaultMmsApp;->access$000(Lcom/android/exsettings/DefaultMmsApp;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 153
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 157
    :goto_0
    new-instance v3, Lcom/android/exsettings/DefaultMmsApp$AppArrayAdapter$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/android/exsettings/DefaultMmsApp$AppArrayAdapter$1;-><init>(Lcom/android/exsettings/DefaultMmsApp$AppArrayAdapter;ILandroid/widget/CheckedTextView;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    return-object v2

    .line 155
    :cond_0
    invoke-virtual {v0, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0
.end method
