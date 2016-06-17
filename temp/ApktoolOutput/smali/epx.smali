.class public final Lepx;
.super Ljava/lang/Object;
.source "HttpTransaction.java"

# interfaces
.implements Leqk;


# instance fields
.field private synthetic a:Ljava/nio/channels/WritableByteChannel;


# direct methods
.method public constructor <init>(Ljava/nio/channels/WritableByteChannel;)V
    .locals 0
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lepx;->a:Ljava/nio/channels/WritableByteChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter

    .prologue
    .line 318
    iget-object v0, p0, Lepx;->a:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v0, p1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 319
    return-void
.end method
