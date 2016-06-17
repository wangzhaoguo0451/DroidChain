.class public final Lgqo;
.super Ljava/lang/Object;
.source "AboutDialog.java"

# interfaces
.implements Lgxu;


# instance fields
.field private synthetic a:Lgqm;


# direct methods
.method public constructor <init>(Lgqm;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lgqo;->a:Lgqm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lgqo;->a:Lgqm;

    iget-object v0, v0, Lgqm;->b:Lmt;

    invoke-virtual {v0}, Lmt;->dismiss()V

    .line 54
    return-void
.end method
