.class final Lfsc;
.super Ljava/lang/Object;
.source "ZendeskHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:I


# direct methods
.method constructor <init>(Ljava/util/List;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 554
    iput-object p1, p0, Lfsc;->a:Ljava/util/List;

    iput p2, p0, Lfsc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 557
    iget-object v0, p0, Lfsc;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfse;

    .line 558
    iget v2, p0, Lfsc;->b:I

    iget-object v0, v0, Lfse;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v0, v2}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->a(Lcom/wandoujia/p4/feedback/FeedbackActivity;I)V

    goto :goto_0

    .line 560
    :cond_0
    return-void
.end method
