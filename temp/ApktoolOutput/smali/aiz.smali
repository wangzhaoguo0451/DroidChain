.class final Laiz;
.super Ljava/lang/Object;
.source "DefaultDiskStorageSupplier.java"


# instance fields
.field public final a:Lajc;

.field public final b:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;Lajc;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p2, p0, Laiz;->a:Lajc;

    .line 48
    iput-object p1, p0, Laiz;->b:Ljava/io/File;

    .line 49
    return-void
.end method
