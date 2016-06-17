.class public Lcom/wandoujia/p4/views/NetContentListView;
.super Lcom/wandoujia/p4/views/ContentListView;
.source "NetContentListView.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/views/ContentListView;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/p4/views/ContentListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/wandoujia/p4/views/ContentListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    return-void
.end method


# virtual methods
.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wandoujia/p4/views/NetContentListView;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0}, Lcom/wandoujia/p4/views/ContentListView;->onAttachedToWindow()V

    .line 51
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Lcom/wandoujia/p4/views/ContentListView;->onDetachedFromWindow()V

    .line 56
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/wandoujia/p4/views/NetContentListView;->a:Ljava/lang/String;

    .line 46
    return-void
.end method
