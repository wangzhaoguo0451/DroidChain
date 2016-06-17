.class public final Leic;
.super Ljava/lang/Object;
.source "ZipManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Leif;

.field private synthetic b:Leij;


# direct methods
.method public constructor <init>(Leif;Leij;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Leic;->a:Leif;

    iput-object p2, p0, Leic;->b:Leij;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Leic;->a:Leif;

    iget-object v1, p0, Leic;->b:Leij;

    invoke-interface {v0, v1}, Leif;->a(Leij;)V

    .line 234
    return-void
.end method
