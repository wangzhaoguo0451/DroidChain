.class public Lcom/wandoujia/game_launcher/views/GameFooterView;
.super Landroid/widget/LinearLayout;
.source "GameFooterView.java"


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/view/View;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Lcom/wandoujia/game_launcher/views/GameFooterView;
    .locals 1
    .parameter

    .prologue
    .line 35
    sget v0, Lcom/wandoujia/game_launcher/lib/R$layout;->game_launcher_footer_view:I

    invoke-static {p0, v0}, Lehx;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/game_launcher/views/GameFooterView;

    return-object v0
.end method


# virtual methods
.method public getLeftPanel()Landroid/view/View;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameFooterView;->a:Landroid/view/View;

    return-object v0
.end method

.method public getRightPanel()Landroid/view/View;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameFooterView;->c:Landroid/view/View;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 41
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->left_panel:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/game_launcher/views/GameFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/game_launcher/views/GameFooterView;->a:Landroid/view/View;

    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->right_panel:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/game_launcher/views/GameFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/game_launcher/views/GameFooterView;->c:Landroid/view/View;

    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->split:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/game_launcher/views/GameFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/game_launcher/views/GameFooterView;->b:Landroid/view/View;

    .line 42
    return-void
.end method
