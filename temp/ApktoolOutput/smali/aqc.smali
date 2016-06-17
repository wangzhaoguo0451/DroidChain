.class final Laqc;
.super Ljava/lang/Object;
.source "ImagePipelineFactory.java"

# interfaces
.implements Lanv;


# instance fields
.field private synthetic a:Laog;


# direct methods
.method constructor <init>(Laog;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Laqc;->a:Laog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lano;Landroid/graphics/Rect;)Lani;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 134
    new-instance v0, Lanu;

    iget-object v1, p0, Laqc;->a:Laog;

    invoke-direct {v0, v1, p1, p2}, Lanu;-><init>(Laog;Lano;Landroid/graphics/Rect;)V

    return-object v0
.end method
