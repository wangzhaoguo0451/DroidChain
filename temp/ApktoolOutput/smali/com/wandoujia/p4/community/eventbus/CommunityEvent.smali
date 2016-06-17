.class public final Lcom/wandoujia/p4/community/eventbus/CommunityEvent;
.super Ljava/lang/Object;
.source "CommunityEvent.java"


# instance fields
.field public final a:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

.field public final b:Z

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;ZLjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;->a:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    .line 38
    iput-boolean p2, p0, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;->b:Z

    .line 39
    iput-object p3, p0, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;->c:Ljava/lang/Object;

    .line 40
    return-void
.end method
