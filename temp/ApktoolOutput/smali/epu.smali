.class final Lepu;
.super Ljava/lang/Object;
.source "FileDownloader.java"

# interfaces
.implements Leqk;


# instance fields
.field private synthetic a:Lept;


# direct methods
.method constructor <init>(Lept;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lepu;->a:Lept;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lepu;->a:Lept;

    iget-object v0, v0, Lept;->a:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 129
    return-void
.end method
