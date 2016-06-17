.class public Lcom/wandoujia/p4/player/flv/FlvResult$UrlResult;
.super Ljava/lang/Object;
.source "FlvResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xa427db0e7b38aecL


# instance fields
.field public duration:F

.field public expire:J

.field public mimetype:Ljava/lang/String;

.field public quality:Ljava/lang/String;

.field public seq:J

.field public size:J

.field final synthetic this$0:Lcom/wandoujia/p4/player/flv/FlvResult;

.field public type:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/player/flv/FlvResult;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/wandoujia/p4/player/flv/FlvResult$UrlResult;->this$0:Lcom/wandoujia/p4/player/flv/FlvResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
