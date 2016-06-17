.class public Lcom/wandoujia/launcher/launcher/views/UninstallGamePopupView;
.super Landroid/widget/RelativeLayout;
.source "UninstallGamePopupView.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ledc;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/wandoujia/launcher/launcher/views/UninstallGamePopupView;
    .locals 1
    .parameter

    .prologue
    .line 34
    sget v0, Lcom/wandoujia/game_launcher/lib/R$layout;->uninstall_game_popup_window_layout:I

    invoke-static {p0, v0}, Ledx;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/launcher/views/UninstallGamePopupView;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/launcher/launcher/views/UninstallGamePopupView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/UninstallGamePopupView;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Lcom/wandoujia/launcher/launcher/views/UninstallGamePopupView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/UninstallGamePopupView;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic c(Lcom/wandoujia/launcher/launcher/views/UninstallGamePopupView;)Ledc;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/UninstallGamePopupView;->c:Ledc;

    return-object v0
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/UninstallGamePopupView;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/UninstallGamePopupView;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 41
    new-instance v0, Ledb;

    invoke-direct {v0, p0}, Ledb;-><init>(Lcom/wandoujia/launcher/launcher/views/UninstallGamePopupView;)V

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher/launcher/views/UninstallGamePopupView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method

.method public setOnPopupViewClicked(Ledc;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/wandoujia/launcher/launcher/views/UninstallGamePopupView;->c:Ledc;

    .line 70
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/wandoujia/launcher/launcher/views/UninstallGamePopupView;->a:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/wandoujia/launcher/launcher/views/UninstallGamePopupView;->b:Ljava/lang/String;

    .line 66
    return-void
.end method
