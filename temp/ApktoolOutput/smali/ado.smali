.class public final Lado;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Lado;


# instance fields
.field b:Landroid/util/SparseArray;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lado;->b:Landroid/util/SparseArray;

    .line 25
    return-void
.end method
