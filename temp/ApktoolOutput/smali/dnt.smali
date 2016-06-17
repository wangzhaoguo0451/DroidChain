.class final Ldnt;
.super Ljava/lang/Object;
.source "GuessPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lhht;

.field private synthetic b:Ldns;


# direct methods
.method constructor <init>(Ldns;Lhht;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Ldnt;->b:Ldns;

    iput-object p2, p0, Ldnt;->a:Lhht;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Ldnt;->b:Ldns;

    iget-object v1, p0, Ldnt;->a:Lhht;

    invoke-virtual {v0, v1}, Ldns;->a(Lhht;)V

    .line 71
    return-void
.end method
