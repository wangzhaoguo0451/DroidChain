.class public final Ldaf;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Ldas;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:I

.field private synthetic c:I

.field private synthetic d:Ldaa;


# direct methods
.method public constructor <init>(Ldaa;Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Ldaf;->d:Ldaa;

    iput-object p2, p0, Ldaf;->a:Ljava/lang/String;

    iput p3, p0, Ldaf;->b:I

    iput p4, p0, Ldaf;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ldat;)Ldar;
    .locals 6
    .parameter

    .prologue
    .line 314
    new-instance v0, Ldau;

    iget-object v1, p0, Ldaf;->d:Ldaa;

    iget-object v2, p0, Ldaf;->a:Ljava/lang/String;

    iget v3, p0, Ldaf;->b:I

    iget v4, p0, Ldaf;->c:I

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ldau;-><init>(Ldaa;Ljava/lang/String;IILdat;)V

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 319
    iget-object v0, p0, Ldaf;->a:Ljava/lang/String;

    iget v1, p0, Ldaf;->b:I

    iget v2, p0, Ldaf;->c:I

    invoke-static {v0, v1, v2}, Ldaa;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
