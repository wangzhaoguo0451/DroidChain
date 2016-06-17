.class public final Lcom/squareup/leakcanary/HeapDump;
.super Ljava/lang/Object;
.source "HeapDump.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final gcDurationMs:J

.field public final heapDumpDurationMs:J

.field public final heapDumpFile:Ljava/io/File;

.field public final referenceKey:Ljava/lang/String;

.field public final referenceName:Ljava/lang/String;

.field public final watchDurationMs:J


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;JJJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "heapDumpFile"

    invoke-static {p1, v0}, Ld;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/squareup/leakcanary/HeapDump;->heapDumpFile:Ljava/io/File;

    .line 54
    const-string v0, "referenceKey"

    invoke-static {p2, v0}, Ld;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/squareup/leakcanary/HeapDump;->referenceKey:Ljava/lang/String;

    .line 55
    const-string v0, "referenceName"

    invoke-static {p3, v0}, Ld;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/squareup/leakcanary/HeapDump;->referenceName:Ljava/lang/String;

    .line 56
    iput-wide p4, p0, Lcom/squareup/leakcanary/HeapDump;->watchDurationMs:J

    .line 57
    iput-wide p6, p0, Lcom/squareup/leakcanary/HeapDump;->gcDurationMs:J

    .line 58
    iput-wide p8, p0, Lcom/squareup/leakcanary/HeapDump;->heapDumpDurationMs:J

    .line 59
    return-void
.end method


# virtual methods
.method public final renameFile(Ljava/io/File;)Lcom/squareup/leakcanary/HeapDump;
    .locals 10
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/squareup/leakcanary/HeapDump;->heapDumpFile:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 64
    new-instance v0, Lcom/squareup/leakcanary/HeapDump;

    iget-object v2, p0, Lcom/squareup/leakcanary/HeapDump;->referenceKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/squareup/leakcanary/HeapDump;->referenceName:Ljava/lang/String;

    iget-wide v4, p0, Lcom/squareup/leakcanary/HeapDump;->watchDurationMs:J

    iget-wide v6, p0, Lcom/squareup/leakcanary/HeapDump;->gcDurationMs:J

    iget-wide v8, p0, Lcom/squareup/leakcanary/HeapDump;->heapDumpDurationMs:J

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/squareup/leakcanary/HeapDump;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;JJJ)V

    return-object v0
.end method
