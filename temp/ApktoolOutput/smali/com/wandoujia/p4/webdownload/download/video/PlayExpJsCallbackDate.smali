.class public Lcom/wandoujia/p4/webdownload/download/video/PlayExpJsCallbackDate;
.super Ljava/lang/Object;
.source "PlayExpJsCallbackDate.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x72b8ffe46f3b4669L


# instance fields
.field public error:I

.field public msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/wandoujia/p4/webdownload/download/video/PlayExpJsCallbackDate;->error:I

    .line 16
    iput-object p2, p0, Lcom/wandoujia/p4/webdownload/download/video/PlayExpJsCallbackDate;->msg:Ljava/lang/String;

    .line 17
    return-void
.end method
