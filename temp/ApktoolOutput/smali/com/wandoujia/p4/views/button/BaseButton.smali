.class public abstract Lcom/wandoujia/p4/views/button/BaseButton;
.super Landroid/widget/TextView;
.source "BaseButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 16
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/wandoujia/p4/views/button/BaseButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wandoujia/p4/views/button/BaseButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    new-instance v0, Lgql;

    invoke-direct {v0, p0}, Lgql;-><init>(Lcom/wandoujia/p4/views/button/BaseButton;)V

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/views/button/BaseButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method
