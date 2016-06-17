.class public Lcom/wandoujia/p4/webdownload/download/video/m3u8/M3u8ParseException;
.super Ljava/lang/Exception;
.source "M3u8ParseException.java"


# instance fields
.field private final line:Ljava/lang/String;

.field private final lineNumber:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/wandoujia/p4/webdownload/download/video/m3u8/M3u8ParseException;->line:Ljava/lang/String;

    .line 19
    iput p2, p0, Lcom/wandoujia/p4/webdownload/download/video/m3u8/M3u8ParseException;->lineNumber:I

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 12
    iput-object p1, p0, Lcom/wandoujia/p4/webdownload/download/video/m3u8/M3u8ParseException;->line:Ljava/lang/String;

    .line 13
    iput p2, p0, Lcom/wandoujia/p4/webdownload/download/video/m3u8/M3u8ParseException;->lineNumber:I

    .line 14
    return-void
.end method


# virtual methods
.method public getLine()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/download/video/m3u8/M3u8ParseException;->line:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/wandoujia/p4/webdownload/download/video/m3u8/M3u8ParseException;->lineNumber:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error at line "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/wandoujia/p4/webdownload/download/video/m3u8/M3u8ParseException;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wandoujia/p4/webdownload/download/video/m3u8/M3u8ParseException;->getLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
