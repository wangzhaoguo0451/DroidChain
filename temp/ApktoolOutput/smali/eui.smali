.class public final Leui;
.super Ljava/lang/Object;
.source "BaseCardSelectableAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:J

.field private synthetic b:Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Leui;->b:Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;

    iput-wide p2, p0, Leui;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Leui;->b:Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;

    iget-wide v2, p0, Leui;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->b(J)V

    .line 127
    return-void
.end method
