.class public Lcom/wandoujia/p4/subscribe/http/request/PostSubscribeRequest$SubscribePublisherItem;
.super Ljava/lang/Object;
.source "PostSubscribeRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4bc2baac36b5302eL


# instance fields
.field id:Ljava/lang/String;

.field type:Lcom/wandoujia/p4/subscribe/core/SubscribePublisherType;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/subscribe/core/SubscribePublisherType;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/wandoujia/p4/subscribe/http/request/PostSubscribeRequest$SubscribePublisherItem;->type:Lcom/wandoujia/p4/subscribe/core/SubscribePublisherType;

    .line 81
    iput-object p2, p0, Lcom/wandoujia/p4/subscribe/http/request/PostSubscribeRequest$SubscribePublisherItem;->id:Ljava/lang/String;

    .line 82
    return-void
.end method
