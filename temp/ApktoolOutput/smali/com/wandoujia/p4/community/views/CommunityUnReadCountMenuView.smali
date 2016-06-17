.class public Lcom/wandoujia/p4/community/views/CommunityUnReadCountMenuView;
.super Landroid/widget/FrameLayout;
.source "CommunityUnReadCountMenuView.java"


# instance fields
.field private a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 30
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/wandoujia/p4/community/views/CommunityUnReadCountMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wandoujia/p4/community/views/CommunityUnReadCountMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/community/views/CommunityUnReadCountMenuView;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityUnReadCountMenuView;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method public static a(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/community/views/CommunityUnReadCountMenuView;
    .locals 1
    .parameter

    .prologue
    .line 42
    const v0, 0x7f0300c5

    invoke-static {p0, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/views/CommunityUnReadCountMenuView;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 48
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 49
    const v0, 0x7f0c0145

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/views/CommunityUnReadCountMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityUnReadCountMenuView;->a:Landroid/widget/TextView;

    .line 50
    new-instance v0, Lfog;

    invoke-direct {v0, p0}, Lfog;-><init>(Lcom/wandoujia/p4/community/views/CommunityUnReadCountMenuView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Ld;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 51
    new-instance v0, Lfof;

    invoke-direct {v0, p0}, Lfof;-><init>(Lcom/wandoujia/p4/community/views/CommunityUnReadCountMenuView;)V

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/views/CommunityUnReadCountMenuView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method
