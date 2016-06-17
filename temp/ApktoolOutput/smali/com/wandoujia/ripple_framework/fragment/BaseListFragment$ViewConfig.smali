.class public Lcom/wandoujia/ripple_framework/fragment/BaseListFragment$ViewConfig;
.super Ljava/lang/Object;
.source "BaseListFragment.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x22bdadfdacfbf076L


# instance fields
.field public betweenSpace:I

.field public firstSpace:I

.field public lastSpace:I

.field public swipeRefresh:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment$ViewConfig;->swipeRefresh:Z

    .line 60
    iput v1, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment$ViewConfig;->firstSpace:I

    .line 61
    iput v1, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment$ViewConfig;->lastSpace:I

    .line 62
    iput v1, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment$ViewConfig;->betweenSpace:I

    return-void
.end method
