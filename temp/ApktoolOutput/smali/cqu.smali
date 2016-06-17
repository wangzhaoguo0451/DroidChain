.class public final Lcqu;
.super Ljava/lang/Object;
.source "ContextClassLoaderUtility.java"


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Ljava/util/zip/ZipFile;

.field public final c:Ldalvik/system/DexFile;


# direct methods
.method private constructor <init>(Ljava/io/File;Ljava/util/zip/ZipFile;Ldalvik/system/DexFile;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p1, p0, Lcqu;->a:Ljava/io/File;

    .line 219
    iput-object p2, p0, Lcqu;->b:Ljava/util/zip/ZipFile;

    .line 220
    iput-object p3, p0, Lcqu;->c:Ldalvik/system/DexFile;

    .line 221
    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;Ljava/util/zip/ZipFile;Ldalvik/system/DexFile;B)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 211
    invoke-direct {p0, p1, p2, p3}, Lcqu;-><init>(Ljava/io/File;Ljava/util/zip/ZipFile;Ldalvik/system/DexFile;)V

    return-void
.end method
