.class public final Leie;
.super Ljava/lang/Object;
.source "ZipManager.java"

# interfaces
.implements Leif;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Leie;->a:Ljava/lang/String;

    iput p2, p0, Leie;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Leij;)V
    .locals 2
    .parameter

    .prologue
    .line 268
    iget-object v0, p0, Leie;->a:Ljava/lang/String;

    iget v1, p0, Leie;->b:I

    invoke-interface {p1, v0, v1}, Leij;->a(Ljava/lang/String;I)V

    .line 269
    return-void
.end method
