.class public final Leuh;
.super Ljava/lang/Object;
.source "BaseCardSelectableAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private synthetic a:J

.field private synthetic b:Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Leuh;->b:Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;

    iput-wide p2, p0, Leuh;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Leuh;->b:Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;

    iget-wide v2, p0, Leuh;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->a(J)V

    .line 119
    iget-object v0, p0, Leuh;->b:Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;

    invoke-static {v0}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->a(Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;)V

    .line 120
    const/4 v0, 0x1

    return v0
.end method
