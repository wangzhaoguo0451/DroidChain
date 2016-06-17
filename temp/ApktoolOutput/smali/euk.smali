.class public final Leuk;
.super Ljava/lang/Object;
.source "BaseCardSelectableAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Leuk;->a:Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Leuk;->a:Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;

    invoke-virtual {v0}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->d()V

    .line 168
    iget-object v0, p0, Leuk;->a:Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;

    invoke-virtual {v0}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->b()V

    .line 169
    return-void
.end method
