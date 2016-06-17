.class public Lcom/wandoujia/launcher/launcher/icon/FolderItemView;
.super Landroid/widget/RelativeLayout;
.source "FolderItemView.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseView;


# instance fields
.field private a:Lcom/wandoujia/image/view/AsyncImageView;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/launcher/launcher/icon/FolderItemView;)Lcom/wandoujia/image/view/AsyncImageView;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->a:Lcom/wandoujia/image/view/AsyncImageView;

    return-object v0
.end method

.method public static a(Landroid/view/ViewGroup;)Lcom/wandoujia/launcher/launcher/icon/FolderItemView;
    .locals 1
    .parameter

    .prologue
    .line 45
    sget v0, Lcom/wandoujia/game_launcher/lib/R$layout;->wan_game_folder_icon_game:I

    invoke-static {p0, v0}, Ledx;->a(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    return-object v0
.end method

.method public static synthetic b(Lcom/wandoujia/launcher/launcher/icon/FolderItemView;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method public static b(Landroid/view/ViewGroup;)Lcom/wandoujia/launcher/launcher/icon/FolderItemView;
    .locals 1
    .parameter

    .prologue
    .line 50
    sget v0, Lcom/wandoujia/game_launcher/lib/R$layout;->wan_game_folder_icon_casual:I

    invoke-static {p0, v0}, Ledx;->a(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    return-object v0
.end method

.method public static synthetic c(Lcom/wandoujia/launcher/launcher/icon/FolderItemView;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic d(Lcom/wandoujia/launcher/launcher/icon/FolderItemView;)Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->c:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    return-object v0
.end method

.method public static synthetic e(Lcom/wandoujia/launcher/launcher/icon/FolderItemView;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->e:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public getActionButton()Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->c:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    return-object v0
.end method

.method public getCasualItemView()Leaz;
    .locals 1

    .prologue
    .line 92
    new-instance v0, Leaz;

    invoke-direct {v0, p0}, Leaz;-><init>(Lcom/wandoujia/launcher/launcher/icon/FolderItemView;)V

    return-object v0
.end method

.method public getGameIconView$1e9788cf()Leay;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Leae;

    invoke-direct {v0, p0}, Leae;-><init>(Lcom/wandoujia/launcher/launcher/icon/FolderItemView;)V

    return-object v0
.end method

.method public getIconView()Lcom/wandoujia/image/view/AsyncImageView;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->a:Lcom/wandoujia/image/view/AsyncImageView;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 127
    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 57
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->icon:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/image/view/AsyncImageView;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->a:Lcom/wandoujia/image/view/AsyncImageView;

    .line 58
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->appname:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->b:Landroid/widget/TextView;

    .line 59
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->button:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->c:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    .line 60
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->mask_icon:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->d:Landroid/widget/ImageView;

    .line 61
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->app_pos:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->e:Landroid/widget/TextView;

    .line 62
    return-void
.end method
