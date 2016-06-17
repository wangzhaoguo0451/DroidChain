.class public Lcom/wandoujia/p4/app/detail/view/OperationBar;
.super Landroid/widget/LinearLayout;
.source "OperationBar.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseView;


# instance fields
.field private a:Lcom/wandoujia/p4/button/views/StatefulProgressButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/app/detail/view/OperationBar;
    .locals 1
    .parameter

    .prologue
    .line 60
    const v0, 0x7f0301c4

    invoke-static {p0, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/app/detail/view/OperationBar;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/app/detail/view/OperationBar;)Lcom/wandoujia/p4/button/views/StatefulProgressButton;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/view/OperationBar;->a:Lcom/wandoujia/p4/button/views/StatefulProgressButton;

    return-object v0
.end method


# virtual methods
.method public getMainButton()Lfar;
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lewv;

    invoke-direct {v0, p0}, Lewv;-><init>(Lcom/wandoujia/p4/app/detail/view/OperationBar;)V

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 56
    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 37
    const v0, 0x7f0c0416

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/app/detail/view/OperationBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/button/views/StatefulProgressButton;

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/view/OperationBar;->a:Lcom/wandoujia/p4/button/views/StatefulProgressButton;

    .line 38
    return-void
.end method
