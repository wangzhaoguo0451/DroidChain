.class public Lcom/wandoujia/p4/video2/local/LocalFileUtil$VideoFileName;
.super Ljava/lang/Object;
.source "LocalFileUtil.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xd1cd2482befbc7aL


# instance fields
.field public final fileName:Ljava/lang/String;

.field public final folderPath:Ljava/lang/String;

.field public final fullNameWithPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p1, p0, Lcom/wandoujia/p4/video2/local/LocalFileUtil$VideoFileName;->folderPath:Ljava/lang/String;

    .line 194
    iput-object p2, p0, Lcom/wandoujia/p4/video2/local/LocalFileUtil$VideoFileName;->fileName:Ljava/lang/String;

    .line 195
    iput-object p3, p0, Lcom/wandoujia/p4/video2/local/LocalFileUtil$VideoFileName;->fullNameWithPath:Ljava/lang/String;

    .line 196
    return-void
.end method
