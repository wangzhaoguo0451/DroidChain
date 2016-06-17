.class public final Lfcc;
.super Ljava/lang/Object;
.source "ContentCardView.java"

# interfaces
.implements Lfar;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/card/views/ContentCardView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/card/views/ContentCardView;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lfcc;->a:Lcom/wandoujia/p4/card/views/ContentCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/wandoujia/p4/button/views/StatefulButton;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lfcc;->a:Lcom/wandoujia/p4/card/views/ContentCardView;

    iget-object v0, v0, Lcom/wandoujia/p4/card/views/ContentCardView;->g:Lcom/wandoujia/p4/button/views/StatefulButton;

    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lfcc;->a:Lcom/wandoujia/p4/card/views/ContentCardView;

    return-object v0
.end method
