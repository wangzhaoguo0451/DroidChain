.class final Lbsm;
.super Ljava/io/FilterOutputStream;
.source "DiskLruCache.java"


# instance fields
.field private synthetic a:Lbsl;


# direct methods
.method private constructor <init>(Lbsl;Ljava/io/OutputStream;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 837
    iput-object p1, p0, Lbsm;->a:Lbsl;

    .line 838
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 839
    return-void
.end method

.method synthetic constructor <init>(Lbsl;Ljava/io/OutputStream;B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 836
    invoke-direct {p0, p1, p2}, Lbsm;-><init>(Lbsl;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 859
    :try_start_0
    iget-object v0, p0, Lbsm;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 863
    :goto_0
    return-void

    .line 861
    :catch_0
    move-exception v0

    iget-object v0, p0, Lbsm;->a:Lbsl;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lbsl;->c:Z

    goto :goto_0
.end method

.method public final flush()V
    .locals 2

    .prologue
    .line 867
    :try_start_0
    iget-object v0, p0, Lbsm;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 871
    :goto_0
    return-void

    .line 869
    :catch_0
    move-exception v0

    iget-object v0, p0, Lbsm;->a:Lbsl;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lbsl;->c:Z

    goto :goto_0
.end method

.method public final write(I)V
    .locals 2
    .parameter

    .prologue
    .line 843
    :try_start_0
    iget-object v0, p0, Lbsm;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 847
    :goto_0
    return-void

    .line 845
    :catch_0
    move-exception v0

    iget-object v0, p0, Lbsm;->a:Lbsl;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lbsl;->c:Z

    goto :goto_0
.end method

.method public final write([BII)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 851
    :try_start_0
    iget-object v0, p0, Lbsm;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 855
    :goto_0
    return-void

    .line 853
    :catch_0
    move-exception v0

    iget-object v0, p0, Lbsm;->a:Lbsl;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lbsl;->c:Z

    goto :goto_0
.end method
