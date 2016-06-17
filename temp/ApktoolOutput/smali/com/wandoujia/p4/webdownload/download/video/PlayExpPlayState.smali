.class public Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;
.super Ljava/lang/Object;
.source "PlayExpPlayState.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2b880b83e66c8f55L


# instance fields
.field buffered:I

.field duration:I

.field played:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;->played:I

    .line 19
    iput p2, p0, Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;->buffered:I

    .line 20
    iput p3, p0, Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;->duration:I

    .line 21
    return-void
.end method
